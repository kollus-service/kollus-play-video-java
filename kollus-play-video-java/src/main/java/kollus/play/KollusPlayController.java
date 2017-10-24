package kollus.play;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import kollus.jwt.JwtDecoder;
import kollus.jwt.JwtEncoder;

@Controller
public class KollusPlayController {

	private static final JwtEncoder encoder = new JwtEncoder();

	@RequestMapping("/")
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}

	@RequestMapping(value = "/token", method = RequestMethod.POST)
	@ResponseBody
	public String token(@RequestBody String req, @RequestParam(value = "secretkey", required = true) String secretkey,
			@RequestParam(value = "userkey", required = true) String userkey, BindingResult bindingResult) throws InvalidKeyException, NoSuchAlgorithmException
			 {

		Gson gson = new Gson();
		if(bindingResult.hasErrors()){
			HashMap<String, String> err = new HashMap<String, String>();
			err.put("error", "Invalid Request");
			return gson.toJson(err); 
		}
		HashMap<String, Object> payloadMap = gson.fromJson(req, HashMap.class);
		String header = gson.toJson(payloadMap.get("header"));
		String payload = gson.toJson(payloadMap.get("payload"));
		String token = encoder.createJwt(payload, secretkey);
		String playUrl = encoder.getPlayUrl("http://v.kr.kollus.com", token, userkey);
		HashMap<String, String> resultMap = new HashMap<String, String>();
		resultMap.put("token", token);
		resultMap.put("playUrl", playUrl);
		return gson.toJson(resultMap);
	}

	@RequestMapping(value = "/decodetoken", method = RequestMethod.POST)
	@ResponseBody
	public String decodetoken(@RequestBody String req) throws Exception {
		JwtDecoder decoder = new JwtDecoder(req);
		String[] decoded = decoder.decodeJwt();
		HashMap<String, String> resultMap = new HashMap<String, String>();
		resultMap.put("header", decoded[0]);
		resultMap.put("payload", decoded[1]);
		return null;
	}
}
