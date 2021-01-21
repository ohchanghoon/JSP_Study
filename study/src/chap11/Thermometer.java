package chap11;

import java.util.HashMap;
import java.util.Map;

public class Thermometer {

	// 위치,온도 정보를 보관할 Map 타입의 필드를 정의한다.
	private Map<String, Double> locationCelsiusMap = new HashMap<String, Double>(); 

	// 위치온도 정보를 추가한다. 리턴 타입이 void이고 두개의 파라미터를 갖는다
	public void setCelsius(String location, Double value) {
		locationCelsiusMap.put(location, value); 
	}

	// location 파라미터 값에 해당하는 위치의 섭씨온도 구한다. 리턴 타입이 Double이고 한 개의 파라미터를 갖는다.
	public Double getCelsius(String location) {
		return locationCelsiusMap.get(location);
	}

	// location 파라미터 값에 해당하는 위치의 화씨온도 구한다. 리턴 타입이 DOuble이고 한 개의 파라미터를 갖는다.
	public Double getFahrenheit(String location) {
		Double celsius = getCelsius(location);
		if (celsius == null) {
			return null;
		}
		return celsius.doubleValue() * 1.8 + 32.0;
	}

	// 정보를 제공하는 메서드로서, 리턴 타입이 String 이고 파라미터를 갖지 않는 전형적인 get메서드이다.
	public String getINfo() {
		return "온도계 변환기 1.1";
	}
}
