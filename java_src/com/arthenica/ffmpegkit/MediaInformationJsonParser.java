package com.arthenica.ffmpegkit;

import com.arthenica.smartexception.java.Exceptions;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class MediaInformationJsonParser {
    public static final String KEY_CHAPTERS = "chapters";
    public static final String KEY_STREAMS = "streams";

    public static MediaInformation from(String str) {
        try {
            return fromWithError(str);
        } catch (JSONException e10) {
            android.util.Log.e("ffmpeg-kit", String.format("MediaInformation parsing failed.%s", Exceptions.getStackTraceString(e10)));
            return null;
        }
    }

    public static MediaInformation fromWithError(String str) {
        JSONObject jSONObject = new JSONObject(str);
        JSONArray optJSONArray = jSONObject.optJSONArray(KEY_STREAMS);
        JSONArray optJSONArray2 = jSONObject.optJSONArray(KEY_CHAPTERS);
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; optJSONArray != null && i10 < optJSONArray.length(); i10++) {
            JSONObject optJSONObject = optJSONArray.optJSONObject(i10);
            if (optJSONObject != null) {
                arrayList.add(new StreamInformation(optJSONObject));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i11 = 0; optJSONArray2 != null && i11 < optJSONArray2.length(); i11++) {
            JSONObject optJSONObject2 = optJSONArray2.optJSONObject(i11);
            if (optJSONObject2 != null) {
                arrayList2.add(new Chapter(optJSONObject2));
            }
        }
        return new MediaInformation(jSONObject, arrayList, arrayList2);
    }
}
