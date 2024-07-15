package com.osttra.tradeMatching.endToendTesting.validatePostMethod;

import static org.junit.Assert.assertEquals;

import java.time.LocalDate;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import static org.hamcrest.Matchers.*;

@SpringBootTest @DisplayName("Create Valid Trade ")
public class ValidateCreateValidTrade {

	@Test @DisplayName("Test_Case_ValidTrade")
	void CreateValidTradeWithNoMatchingCouterPartyTradeTest() {
		
		LocalDate datenow = LocalDate.now();
		LocalDate nextMonthDate = LocalDate.now().plusMonths(1);
		LocalDate endDate = LocalDate.now().plusYears(1);
		int randomId = ((int)(Math.random() * 12000) + 1);
		
		String trade = "{\r\n"
				+ "  \"buyer\": \"SBIM\",\r\n"
				+ "  \"counterParty\": \"HDFCM\",\r\n"
				+ "  \"counterPartyFullname\": \"HDFC MUMBAI\",\r\n"
				+ "  \"counterPartyInstitution\": \"HDFC\",\r\n"
				+ "  \"currency\": \"INR\",\r\n"
				+ "  \"effectiveDate\": \""+nextMonthDate+"\",\r\n"
				+ "  \"instrumentId\": \"Bonds\",\r\n"
				+ "  \"maturityDate\": \""+endDate+"\",\r\n"
				+ "  \"notionalAmount\": 1000,\r\n"
				+ "  \"party\": \"SBIM\",\r\n"
				+ "  \"partyFullname\": \"SBI MUMBAI\",\r\n"
				+ "  \"partyInstitution\": \"SBI\",\r\n"
				+ "  \"seller\": \"HDFCM\",\r\n"
				+ "  \"tradeDate\": \""+datenow+"\",\r\n"
				+ "  \"tradeId\": \""+randomId+"\"\r\n"
				+ "}";

		RestAssured.given().header("content-type","application/json").and().body(trade).post("http://localhost:8080/trade/inserttrade").then().statusCode(201).and().body("size()", is(greaterThan(1)));

	}
	
}
