package qf;

import android.content.Context;
import android.media.AudioManager;
import id.Function2;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.io.FileNotFoundException;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.m;
import rd.b0;
import rf.n;
import rf.s;
import xc.q;
import xc.t;
import yc.h0;
import yc.w;
/* loaded from: classes2.dex */
public final class d implements FlutterPlugin {

    /* renamed from: a  reason: collision with root package name */
    private MethodChannel f28783a;

    /* renamed from: b  reason: collision with root package name */
    private MethodChannel f28784b;

    /* renamed from: c  reason: collision with root package name */
    private f f28785c;

    /* renamed from: d  reason: collision with root package name */
    private Context f28786d;

    /* renamed from: e  reason: collision with root package name */
    private BinaryMessenger f28787e;

    /* renamed from: f  reason: collision with root package name */
    private n f28788f;

    /* renamed from: g  reason: collision with root package name */
    private final ConcurrentHashMap f28789g = new ConcurrentHashMap();

    /* renamed from: h  reason: collision with root package name */
    private qf.a f28790h = new qf.a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public /* synthetic */ class a extends k implements Function2 {
        a(Object obj) {
            super(2, obj, d.class, "methodHandler", "methodHandler(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", 0);
        }

        public final void f(MethodCall p02, MethodChannel.Result p12) {
            m.e(p02, "p0");
            m.e(p12, "p1");
            ((d) this.receiver).q(p02, p12);
        }

        @Override // id.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            f((MethodCall) obj, (MethodChannel.Result) obj2);
            return t.f32733a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public /* synthetic */ class b extends k implements Function2 {
        b(Object obj) {
            super(2, obj, d.class, "globalMethodHandler", "globalMethodHandler(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", 0);
        }

        public final void f(MethodCall p02, MethodChannel.Result p12) {
            m.e(p02, "p0");
            m.e(p12, "p1");
            ((d) this.receiver).h(p02, p12);
        }

        @Override // id.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            f((MethodCall) obj, (MethodChannel.Result) obj2);
            return t.f32733a;
        }
    }

    private final s g(String str) {
        s sVar = (s) this.f28789g.get(str);
        if (sVar != null) {
            return sVar;
        }
        throw new IllegalStateException("Player has not yet been created or has already been disposed.".toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(MethodCall methodCall, MethodChannel.Result result) {
        qf.a b10;
        String str = methodCall.method;
        if (str != null) {
            switch (str.hashCode()) {
                case -1630329231:
                    if (str.equals("emitLog")) {
                        String str2 = (String) methodCall.argument("message");
                        if (str2 != null) {
                            m(str2);
                            result.success(1);
                            return;
                        }
                        throw new IllegalStateException("message is required".toString());
                    }
                    break;
                case 3237136:
                    if (str.equals("init")) {
                        Collection<s> values = this.f28789g.values();
                        m.d(values, "<get-values>(...)");
                        for (s sVar : values) {
                            sVar.e();
                        }
                        this.f28789g.clear();
                        result.success(1);
                        return;
                    }
                    break;
                case 910310901:
                    if (str.equals("emitError")) {
                        String str3 = (String) methodCall.argument("code");
                        if (str3 != null) {
                            String str4 = (String) methodCall.argument("message");
                            if (str4 != null) {
                                l(str3, str4, null);
                                result.success(1);
                                return;
                            }
                            throw new IllegalStateException("message is required".toString());
                        }
                        throw new IllegalStateException("code is required".toString());
                    }
                    break;
                case 1902436987:
                    if (str.equals("setAudioContext")) {
                        AudioManager f10 = f();
                        f10.setMode(this.f28790h.e());
                        f10.setSpeakerphoneOn(this.f28790h.g());
                        b10 = e.b(methodCall);
                        this.f28790h = b10;
                        result.success(1);
                        return;
                    }
                    break;
            }
        }
        result.notImplemented();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(MethodCall methodCall, MethodChannel.Result result) {
        List y02;
        Object Z;
        qf.a b10;
        List y03;
        Object Z2;
        String str = (String) methodCall.argument("playerId");
        if (str == null) {
            return;
        }
        g gVar = null;
        n nVar = null;
        h valueOf = null;
        if (m.a(methodCall.method, "create")) {
            BinaryMessenger binaryMessenger = this.f28787e;
            if (binaryMessenger == null) {
                m.s("binaryMessenger");
                binaryMessenger = null;
            }
            f fVar = new f(new EventChannel(binaryMessenger, "xyz.luan/audioplayers/events/" + str));
            ConcurrentHashMap concurrentHashMap = this.f28789g;
            qf.a c10 = qf.a.c(this.f28790h, false, false, 0, 0, 0, 0, 63, null);
            n nVar2 = this.f28788f;
            if (nVar2 == null) {
                m.s("soundPoolManager");
            } else {
                nVar = nVar2;
            }
            concurrentHashMap.put(str, new s(this, fVar, c10, nVar));
            result.success(1);
            return;
        }
        s g10 = g(str);
        try {
            String str2 = methodCall.method;
            if (str2 != null) {
                boolean z10 = false;
                switch (str2.hashCode()) {
                    case -1757019252:
                        if (!str2.equals("getCurrentPosition")) {
                            break;
                        } else {
                            result.success(g10.k());
                            return;
                        }
                    case -1722943962:
                        if (!str2.equals("setPlayerMode")) {
                            break;
                        } else {
                            String str3 = (String) methodCall.argument("playerMode");
                            if (str3 != null) {
                                y02 = b0.y0(str3, new char[]{'.'}, false, 0, 6, null);
                                Z = w.Z(y02);
                                gVar = g.valueOf(e.c((String) Z));
                            }
                            if (gVar != null) {
                                g10.I(gVar);
                                result.success(1);
                                return;
                            }
                            throw new IllegalStateException("playerMode is required".toString());
                        }
                    case -1660487654:
                        if (!str2.equals("setBalance")) {
                            break;
                        } else {
                            Double d10 = (Double) methodCall.argument("balance");
                            if (d10 != null) {
                                g10.H((float) d10.doubleValue());
                                result.success(1);
                                return;
                            }
                            throw new IllegalStateException("balance is required".toString());
                        }
                    case -1630329231:
                        if (!str2.equals("emitLog")) {
                            break;
                        } else {
                            String str4 = (String) methodCall.argument("message");
                            if (str4 != null) {
                                g10.t(str4);
                                result.success(1);
                                return;
                            }
                            throw new IllegalStateException("message is required".toString());
                        }
                    case -934426579:
                        if (!str2.equals("resume")) {
                            break;
                        } else {
                            g10.D();
                            result.success(1);
                            return;
                        }
                    case -402284771:
                        if (!str2.equals("setPlaybackRate")) {
                            break;
                        } else {
                            Double d11 = (Double) methodCall.argument("playbackRate");
                            if (d11 != null) {
                                g10.K((float) d11.doubleValue());
                                result.success(1);
                                return;
                            }
                            throw new IllegalStateException("playbackRate is required".toString());
                        }
                    case -159032046:
                        if (!str2.equals("setSourceUrl")) {
                            break;
                        } else {
                            String str5 = (String) methodCall.argument("url");
                            if (str5 != null) {
                                Boolean bool = (Boolean) methodCall.argument("isLocal");
                                if (bool != null) {
                                    z10 = bool.booleanValue();
                                }
                                try {
                                    g10.M(new sf.d(str5, z10));
                                    result.success(1);
                                    return;
                                } catch (FileNotFoundException e10) {
                                    result.error("AndroidAudioError", "Failed to set source. For troubleshooting, see: https://github.com/bluefireteam/audioplayers/blob/main/troubleshooting.md", e10);
                                    return;
                                }
                            }
                            throw new IllegalStateException("url is required".toString());
                        }
                    case 3526264:
                        if (!str2.equals("seek")) {
                            break;
                        } else {
                            Integer num = (Integer) methodCall.argument("position");
                            if (num != null) {
                                g10.G(num.intValue());
                                result.success(1);
                                return;
                            }
                            throw new IllegalStateException("position is required".toString());
                        }
                    case 3540994:
                        if (!str2.equals("stop")) {
                            break;
                        } else {
                            g10.P();
                            result.success(1);
                            return;
                        }
                    case 85887754:
                        if (!str2.equals("getDuration")) {
                            break;
                        } else {
                            result.success(g10.l());
                            return;
                        }
                    case 106440182:
                        if (!str2.equals("pause")) {
                            break;
                        } else {
                            g10.C();
                            result.success(1);
                            return;
                        }
                    case 670514716:
                        if (!str2.equals("setVolume")) {
                            break;
                        } else {
                            Double d12 = (Double) methodCall.argument("volume");
                            if (d12 != null) {
                                g10.N((float) d12.doubleValue());
                                result.success(1);
                                return;
                            }
                            throw new IllegalStateException("volume is required".toString());
                        }
                    case 910310901:
                        if (!str2.equals("emitError")) {
                            break;
                        } else {
                            String str6 = (String) methodCall.argument("code");
                            if (str6 != null) {
                                String str7 = (String) methodCall.argument("message");
                                if (str7 != null) {
                                    g10.s(str6, str7, null);
                                    result.success(1);
                                    return;
                                }
                                throw new IllegalStateException("message is required".toString());
                            }
                            throw new IllegalStateException("code is required".toString());
                        }
                    case 1090594823:
                        if (!str2.equals("release")) {
                            break;
                        } else {
                            g10.E();
                            result.success(1);
                            return;
                        }
                    case 1671767583:
                        if (!str2.equals("dispose")) {
                            break;
                        } else {
                            g10.e();
                            this.f28789g.remove(str);
                            result.success(1);
                            return;
                        }
                    case 1771699022:
                        if (!str2.equals("setSourceBytes")) {
                            break;
                        } else {
                            byte[] bArr = (byte[]) methodCall.argument("bytes");
                            if (bArr != null) {
                                g10.M(new sf.b(bArr));
                                result.success(1);
                                return;
                            }
                            throw new IllegalStateException("bytes are required".toString());
                        }
                    case 1902436987:
                        if (!str2.equals("setAudioContext")) {
                            break;
                        } else {
                            b10 = e.b(methodCall);
                            g10.Q(b10);
                            result.success(1);
                            return;
                        }
                    case 2096116872:
                        if (!str2.equals("setReleaseMode")) {
                            break;
                        } else {
                            String str8 = (String) methodCall.argument("releaseMode");
                            if (str8 != null) {
                                y03 = b0.y0(str8, new char[]{'.'}, false, 0, 6, null);
                                Z2 = w.Z(y03);
                                valueOf = h.valueOf(e.c((String) Z2));
                            }
                            if (valueOf != null) {
                                g10.L(valueOf);
                                result.success(1);
                                return;
                            }
                            throw new IllegalStateException("releaseMode is required".toString());
                        }
                }
            }
            result.notImplemented();
        } catch (Exception e11) {
            result.error("AndroidAudioError", e11.getMessage(), e11);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(d dVar, MethodCall call, MethodChannel.Result response) {
        m.e(call, "call");
        m.e(response, "response");
        dVar.t(call, response, new a(dVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(d dVar, MethodCall call, MethodChannel.Result response) {
        m.e(call, "call");
        m.e(response, "response");
        dVar.t(call, response, new b(dVar));
    }

    private final void t(MethodCall methodCall, MethodChannel.Result result, Function2 function2) {
        try {
            function2.invoke(methodCall, result);
        } catch (Throwable th) {
            result.error("Unexpected AndroidAudioError", th.getMessage(), th);
        }
    }

    public final Context e() {
        Context context = this.f28786d;
        if (context == null) {
            m.s("context");
            context = null;
        }
        Context applicationContext = context.getApplicationContext();
        m.d(applicationContext, "getApplicationContext(...)");
        return applicationContext;
    }

    public final AudioManager f() {
        Context context = this.f28786d;
        if (context == null) {
            m.s("context");
            context = null;
        }
        Object systemService = context.getApplicationContext().getSystemService("audio");
        m.c(systemService, "null cannot be cast to non-null type android.media.AudioManager");
        return (AudioManager) systemService;
    }

    public final void i(s player) {
        m.e(player, "player");
        f.d(player.m(), "audio.onComplete", null, 2, null);
    }

    public final void j(s player) {
        int i10;
        HashMap g10;
        m.e(player, "player");
        f m10 = player.m();
        xc.k[] kVarArr = new xc.k[1];
        Integer l10 = player.l();
        if (l10 != null) {
            i10 = l10.intValue();
        } else {
            i10 = 0;
        }
        kVarArr[0] = q.a("value", Integer.valueOf(i10));
        g10 = h0.g(kVarArr);
        m10.c("audio.onDuration", g10);
    }

    public final void k(s player, String str, String str2, Object obj) {
        m.e(player, "player");
        player.m().b(str, str2, obj);
    }

    public final void l(String str, String str2, Object obj) {
        f fVar = this.f28785c;
        if (fVar == null) {
            m.s("globalEvents");
            fVar = null;
        }
        fVar.b(str, str2, obj);
    }

    public final void m(String message) {
        HashMap g10;
        m.e(message, "message");
        f fVar = this.f28785c;
        if (fVar == null) {
            m.s("globalEvents");
            fVar = null;
        }
        g10 = h0.g(q.a("value", message));
        fVar.c("audio.onLog", g10);
    }

    public final void n(s player, String message) {
        HashMap g10;
        m.e(player, "player");
        m.e(message, "message");
        f m10 = player.m();
        g10 = h0.g(q.a("value", message));
        m10.c("audio.onLog", g10);
    }

    public final void o(s player, boolean z10) {
        HashMap g10;
        m.e(player, "player");
        f m10 = player.m();
        g10 = h0.g(q.a("value", Boolean.valueOf(z10)));
        m10.c("audio.onPrepared", g10);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        this.f28786d = binding.getApplicationContext();
        this.f28787e = binding.getBinaryMessenger();
        this.f28788f = new n(this);
        MethodChannel methodChannel = new MethodChannel(binding.getBinaryMessenger(), "xyz.luan/audioplayers");
        this.f28783a = methodChannel;
        methodChannel.setMethodCallHandler(new MethodChannel.MethodCallHandler() { // from class: qf.b
            @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
            public final void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                d.r(d.this, methodCall, result);
            }
        });
        MethodChannel methodChannel2 = new MethodChannel(binding.getBinaryMessenger(), "xyz.luan/audioplayers.global");
        this.f28784b = methodChannel2;
        methodChannel2.setMethodCallHandler(new MethodChannel.MethodCallHandler() { // from class: qf.c
            @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
            public final void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                d.s(d.this, methodCall, result);
            }
        });
        this.f28785c = new f(new EventChannel(binding.getBinaryMessenger(), "xyz.luan/audioplayers.global/events"));
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        Collection<s> values = this.f28789g.values();
        m.d(values, "<get-values>(...)");
        for (s sVar : values) {
            sVar.e();
        }
        this.f28789g.clear();
        n nVar = this.f28788f;
        f fVar = null;
        if (nVar == null) {
            m.s("soundPoolManager");
            nVar = null;
        }
        nVar.d();
        f fVar2 = this.f28785c;
        if (fVar2 == null) {
            m.s("globalEvents");
        } else {
            fVar = fVar2;
        }
        fVar.a();
    }

    public final void p(s player) {
        m.e(player, "player");
        f.d(player.m(), "audio.onSeekComplete", null, 2, null);
    }
}
