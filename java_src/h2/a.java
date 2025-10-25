package h2;

import android.content.Context;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import com.arthenica.ffmpegkit.MediaInformation;
import com.arthenica.ffmpegkit.StreamInformation;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Locale;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a implements FlutterPlugin, MethodChannel.MethodCallHandler {

    /* renamed from: a  reason: collision with root package name */
    public Context f16728a;

    String a(int i10, MediaMetadataRetriever mediaMetadataRetriever) {
        try {
            return mediaMetadataRetriever.extractMetadata(i10);
        } catch (Exception unused) {
            return null;
        }
    }

    String b(String str) {
        String str2;
        double d10;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        File file = new File(str);
        boolean exists = file.exists();
        if (exists) {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                mediaMetadataRetriever.setDataSource(this.f16728a, Uri.fromFile(file));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            str2 = a(3, mediaMetadataRetriever);
            str4 = a(5, mediaMetadataRetriever);
            try {
                str4 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(new SimpleDateFormat("yyyyMMdd'T'HHmmss.SSS", Locale.getDefault()).parse(str4));
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            str5 = a(12, mediaMetadataRetriever);
            str6 = a(23, mediaMetadataRetriever);
            str7 = a(25, mediaMetadataRetriever);
            str8 = a(9, mediaMetadataRetriever);
            str9 = a(18, mediaMetadataRetriever);
            str10 = a(19, mediaMetadataRetriever);
            d10 = file.length();
            str3 = a(24, mediaMetadataRetriever);
            try {
                mediaMetadataRetriever.release();
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        } else {
            str2 = "";
            d10 = 0.0d;
            str3 = "";
            str4 = str3;
            str5 = str4;
            str6 = str5;
            str7 = str6;
            str8 = str7;
            str9 = str8;
            str10 = str9;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("path", str);
            jSONObject.put("mimetype", str5);
            jSONObject.put("author", str2);
            jSONObject.put("date", str4);
            jSONObject.put(StreamInformation.KEY_WIDTH, str9);
            jSONObject.put(StreamInformation.KEY_HEIGHT, str10);
            jSONObject.put("location", str6);
            jSONObject.put("framerate", str7);
            jSONObject.put(MediaInformation.KEY_DURATION, str8);
            jSONObject.put("filesize", d10);
            jSONObject.put("orientation", str3);
            jSONObject.put("isfileexist", exists);
        } catch (Exception e13) {
            e13.printStackTrace();
        }
        return jSONObject.toString();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "flutter_video_info").setMethodCallHandler(new a());
        this.f16728a = flutterPluginBinding.getApplicationContext();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        if (methodCall.method.equals("getVidInfo")) {
            result.success(b((String) methodCall.argument("path")));
        } else {
            result.notImplemented();
        }
    }
}
