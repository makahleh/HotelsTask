/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.LinkedList;
import java.util.List;
import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.JSONObject;


/**
 *
 * @author makahleh
 */
public class Offers {

    public List<HotelInfo> fillHotelsList(String destinationName,String minTripDate,String maxTripDate,String lengthOfStay,String minGuestRating,String maxGuestRating) 
    {
        List<HotelInfo> hotels=new LinkedList<>();
        try
        {
        String expediaURL="https://offersvc.expedia.com/offers/v2/getOffers?scenario=deal-finder&page=foo&uid=foo&productType=Hotel";
        if(destinationName !=null){
           if(!destinationName.isEmpty())
            expediaURL=expediaURL+"&destinationName="+destinationName;
        }
        if(minTripDate !=null){
            if(!minTripDate.isEmpty())
            expediaURL=expediaURL+"&MinTripDate="+minTripDate;
        }
         if(maxTripDate !=null){
             if(!maxTripDate.isEmpty())
            expediaURL=expediaURL+"&MaxTripDate="+maxTripDate;
        }
         if(lengthOfStay !=null){
             if(!lengthOfStay.isEmpty())
            expediaURL=expediaURL+"&lengthOfStay="+lengthOfStay;
        }
         if(minGuestRating !=null){
             if(!minGuestRating.isEmpty())
            expediaURL=expediaURL+"&mainGuestRating="+minGuestRating;
        }
         if(maxGuestRating !=null){
             if(!maxGuestRating.isEmpty())
            expediaURL=expediaURL+"&maxGuestRating="+maxGuestRating;
        }
       expediaURL=expediaURL.replace(" ","%20");
        JSONObject json=readJsonFromUrl(expediaURL);
        
        JSONObject offers=(JSONObject)json.get("offers");
        JSONArray allHotels=(JSONArray)offers.get("Hotel");
        for (int i=0; i < allHotels.size(); i++) {
             JSONObject hotel1=(JSONObject) allHotels.get(i);
             JSONObject hotelInfo=(JSONObject) hotel1.get("hotelInfo");
             HotelInfo myHotel =new HotelInfo();
             myHotel.setHotelId((String) hotelInfo.get("hotelId"));
             myHotel.setHotelName((String) hotelInfo.get("hotelName"));
             myHotel.setHotelCity((String) hotelInfo.get("hotelCity"));
             myHotel.setDescription((String) hotelInfo.get("description"));
             myHotel.setHotelDestination((String) hotelInfo.get("hotelDestination"));
             myHotel.setHotelGuestReviewRating((double) hotelInfo.get("hotelGuestReviewRating"));
             myHotel.setHotelImageUrl((String) hotelInfo.get("hotelImageUrl"));
             myHotel.setLanguage((String) hotelInfo.get("language"));
             myHotel.setTravelEndDate((String) hotelInfo.get("travelEndDate"));
             myHotel.setTravelStartDate((String) hotelInfo.get("travelStartDate"));
             myHotel.setHotelCountry((String)( (JSONObject)hotel1.get("destination")).get("longName"));  
             myHotel.setLengthOfStay((long)( (JSONObject)hotel1.get("offerDateRange")).get("lengthOfStay"));    
             myHotel.setHotelURL((((String)( (JSONObject)hotel1.get("hotelUrls")).get("hotelInfositeUrl")).replace("%2F","/").replace("%3A", ":")));
             hotels.add(myHotel);   
        }
             
        }
        catch(IOException e1)
        {
             e1.printStackTrace();
        }
        finally
        {
            return hotels;
        }
    }
public JSONObject readJsonFromUrl(String url) throws IOException {
		InputStream is = new URL(url).openStream();
		//InputStream is = new FileInputStream(new File("D:\\mohammad\\Intreviews\\expedia_Hotel_Deals\\Hotels.txt"));
                try {
			BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
			JSONParser jsonParser = new JSONParser();
			JSONObject json = (JSONObject) jsonParser.parse(rd);	
			return json;
		}
                catch(org.json.simple.parser.ParseException e1)
                {
                    return null;
                }
                catch(IOException e1)
               {
                   e1.printStackTrace();
                   return null;
               }
                finally 
                {
		  is.close();
		}
	}

public HotelInfo showHotelDetails(List<HotelInfo> hotels , String id)
{
   for(HotelInfo hotel : hotels)
   {
       if(hotel.getHotelId().equals(id))
           return hotel;
   }
   return null;
}
}
