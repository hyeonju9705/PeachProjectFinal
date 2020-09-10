package com.peach.test;

import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.io.BufferedReader;
import java.io.InputStreamReader;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.vs.vo.TestVO;

public class JsonExam2 {
   public static List<Object> main() {
	   List<Object> priceTest=new ArrayList<Object>();
	   int a=0;

      // 미세먼지 경보 정보 조회 서비스 - 한국환경공단 api 서비스
      try {
         // 인증키
         String url = "http://www.kamis.or.kr/service/price/xml.do?action=periodProductList&p_cert_key=d087e139-d04b-4c7e-93a7-9fbc44bb767e&p_cert_id=amorfati213&p_returntype=json&p_startday=2020-07-01&p_endday=&p_productclscode=01&p_itemcategorycode=400&p_itemcode=413&p_countrycode=1101";
         String serviceKey = "d087e139-d04b-4c7e-93a7-9fbc44bb767e";
         // http://www.kamis.or.kr/service/price/xml.do?action=periodProductList&p_cert_key=d087e139-d04b-4c7e-93a7-9fbc44bb767e&p_cert_id=amorfati213&p_returntype=json&p_startday=2020-08-05&p_endday=2020-08-26&p_productclscode=01&p_itemcategorycode=400&p_itemcode=413&p_countrycode=1101
         String urlStr = "http://www.kamis.or.kr/service/price/xml.do?action=periodProductList";
         urlStr += "&" + URLEncoder.encode("p_cert_key", "UTF-8") + "=" + serviceKey;
         urlStr += "&" + URLEncoder.encode("p_startday", "UTF-8") + "=2020-08-05";
         urlStr += "&" + URLEncoder.encode("p_endday", "UTF-8") + "=2020-08-27";
         urlStr += "&" + URLEncoder.encode("p_productclscode", "UTF-8") + "=01"; // 소매
         urlStr += "&" + URLEncoder.encode("p_itemcategorycode", "UTF-8") + "=400";// 부류코드=과일=400
         urlStr += "&" + URLEncoder.encode("p_cert_id", "UTF-8") + "111";
         urlStr += "&" + URLEncoder.encode("p_returntype", "UTF-8") + "=json";
         //System.out.println(urlStr);
         ObjectMapper om = new ObjectMapper();
         om.configure(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES, true);
         Map<String, Object> map = new HashMap<String, Object>();
         Map<Object, Object> map02 = new HashMap<Object, Object>();
         map = om.readValue(new URL(url),new TypeReference<Map<String, Object>>(){} );
//         System.out.println(map);
//         System.out.println(map.get("data"));
         String json01 = om.writeValueAsString(map.get("data"));
//         String json01 = String.valueOf(map.get("data"));
         
         
//         System.out.println(json01);
         JsonNode treeNode = om.readTree(json01);
         List<TestVO> voList = new ArrayList<TestVO>();
         for(JsonNode node :treeNode) {
            if(node.isArray()) {
               for(JsonNode n:node) {
                  TestVO vo = new TestVO();
                  vo.setPrice(n.get("price").asText());
                  vo.setYyyy(n.get("yyyy").asText());
                  voList.add(vo);
                  if(n.get("countyname").asText().equals("평균")) {
                     //System.out.println(n.get("yyyy").asText()+"/"+n.get("regday").asText()+" 복숭아 평균 가격: "+n.get("price").asText());
                	  priceTest.add(n.get("price").asText());
                      a++;
                  }
                  
                  
               }
            }
            
         }
//
         
         
      } catch (Exception e) {
         e.printStackTrace();
      }

      priceTest=priceTest.subList(a-30,a);
      return priceTest;

   }// main end

}