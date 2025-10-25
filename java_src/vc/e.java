package vc;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.Toast$Callback;
import io.flutter.FlutterInjector;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import kotlin.jvm.internal.m;
import org.apache.tika.utils.StringUtils;
/* loaded from: classes2.dex */
public final class e implements MethodChannel.MethodCallHandler {

    /* renamed from: a  reason: collision with root package name */
    private Context f31348a;

    /* renamed from: b  reason: collision with root package name */
    private Toast f31349b;

    /* loaded from: classes2.dex */
    public static final class a extends Toast$Callback {
        a() {
        }

        public void onToastHidden() {
            super.onToastHidden();
            e.this.f31349b = null;
        }
    }

    public e(Context context) {
        m.e(context, "context");
        this.f31348a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(e eVar) {
        Toast toast = eVar.f31349b;
        if (toast != null) {
            toast.show();
        }
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        int i10;
        Toast toast;
        m.e(call, "call");
        m.e(result, "result");
        String str = call.method;
        View view = null;
        if (m.a(str, "showToast")) {
            String valueOf = String.valueOf(call.argument("msg"));
            String valueOf2 = String.valueOf(call.argument("length"));
            String valueOf3 = String.valueOf(call.argument("gravity"));
            Number number = (Number) call.argument("bgcolor");
            Number number2 = (Number) call.argument("textcolor");
            Number number3 = (Number) call.argument("fontSize");
            String str2 = (String) call.argument("fontAsset");
            if (m.a(valueOf3, "top")) {
                i10 = 48;
            } else if (m.a(valueOf3, "center")) {
                i10 = 17;
            } else {
                i10 = 80;
            }
            boolean a10 = m.a(valueOf2, "long");
            if (number != null) {
                Object systemService = this.f31348a.getSystemService("layout_inflater");
                m.c(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
                View inflate = ((LayoutInflater) systemService).inflate(h.f31353a, (ViewGroup) null);
                TextView textView = (TextView) inflate.findViewById(g.f31352a);
                textView.setText(valueOf);
                Drawable drawable = this.f31348a.getDrawable(f.f31351a);
                m.b(drawable);
                m.b(drawable);
                drawable.setColorFilter(number.intValue(), PorterDuff.Mode.SRC_IN);
                textView.setBackground(drawable);
                if (number3 != null) {
                    textView.setTextSize(number3.floatValue());
                }
                if (number2 != null) {
                    textView.setTextColor(number2.intValue());
                }
                Toast toast2 = new Toast(this.f31348a);
                this.f31349b = toast2;
                toast2.setDuration(a10 ? 1 : 0);
                if (str2 != null) {
                    AssetManager assets = this.f31348a.getAssets();
                    m.d(assets, "getAssets(...)");
                    String lookupKeyForAsset = FlutterInjector.instance().flutterLoader().getLookupKeyForAsset(str2);
                    m.d(lookupKeyForAsset, "getLookupKeyForAsset(...)");
                    textView.setTypeface(Typeface.createFromAsset(assets, lookupKeyForAsset));
                }
                Toast toast3 = this.f31349b;
                if (toast3 != null) {
                    toast3.setView(inflate);
                }
            } else {
                Log.d("KARTHIK", "showToast: " + number + StringUtils.SPACE + number2 + StringUtils.SPACE + number3 + StringUtils.SPACE + str2);
                Toast makeText = Toast.makeText(this.f31348a, valueOf, a10 ? 1 : 0);
                this.f31349b = makeText;
                if (Build.VERSION.SDK_INT < 30) {
                    if (makeText != null) {
                        view = makeText.getView();
                    }
                    m.b(view);
                    View findViewById = view.findViewById(16908299);
                    m.d(findViewById, "findViewById(...)");
                    TextView textView2 = (TextView) findViewById;
                    if (number3 != null) {
                        textView2.setTextSize(number3.floatValue());
                    }
                    if (number2 != null) {
                        textView2.setTextColor(number2.intValue());
                    }
                    if (str2 != null) {
                        AssetManager assets2 = this.f31348a.getAssets();
                        m.d(assets2, "getAssets(...)");
                        String lookupKeyForAsset2 = FlutterInjector.instance().flutterLoader().getLookupKeyForAsset(str2);
                        m.d(lookupKeyForAsset2, "getLookupKeyForAsset(...)");
                        textView2.setTypeface(Typeface.createFromAsset(assets2, lookupKeyForAsset2));
                    }
                }
            }
            try {
                if (i10 != 17) {
                    if (i10 != 48) {
                        Toast toast4 = this.f31349b;
                        if (toast4 != null) {
                            toast4.setGravity(i10, 0, 100);
                        }
                    } else {
                        Toast toast5 = this.f31349b;
                        if (toast5 != null) {
                            toast5.setGravity(i10, 0, 100);
                        }
                    }
                } else {
                    Toast toast6 = this.f31349b;
                    if (toast6 != null) {
                        toast6.setGravity(i10, 0, 0);
                    }
                }
            } catch (Exception unused) {
            }
            Context context = this.f31348a;
            if (context instanceof Activity) {
                m.c(context, "null cannot be cast to non-null type android.app.Activity");
                ((Activity) context).runOnUiThread(new Runnable() { // from class: vc.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.c(e.this);
                    }
                });
            } else {
                Toast toast7 = this.f31349b;
                if (toast7 != null) {
                    toast7.show();
                }
            }
            if (Build.VERSION.SDK_INT >= 30 && (toast = this.f31349b) != null) {
                toast.addCallback(b.a(new a()));
            }
            result.success(Boolean.TRUE);
        } else if (m.a(str, "cancel")) {
            Toast toast8 = this.f31349b;
            if (toast8 != null) {
                if (toast8 != null) {
                    toast8.cancel();
                }
                this.f31349b = null;
            }
            result.success(Boolean.TRUE);
        } else {
            result.notImplemented();
        }
    }
}
