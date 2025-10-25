package qc;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.arthenica.ffmpegkit.Chapter;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
import com.google.android.gms.auth.api.credentials.CredentialRequestResponse;
import com.google.android.gms.auth.api.credentials.Credentials;
import com.google.android.gms.auth.api.credentials.CredentialsClient;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.common.api.Status;
import com.pichillilorenzo.flutter_inappwebview_android.credential_database.URLCredentialContract;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import m6.Task;
import qc.m;
/* loaded from: classes2.dex */
public final class m implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware, PluginRegistry.ActivityResultListener {

    /* renamed from: h  reason: collision with root package name */
    public static final a f28721h = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private Context f28722a;

    /* renamed from: b  reason: collision with root package name */
    private Activity f28723b;

    /* renamed from: c  reason: collision with root package name */
    private ActivityPluginBinding f28724c;

    /* renamed from: d  reason: collision with root package name */
    private MethodChannel f28725d;

    /* renamed from: e  reason: collision with root package name */
    private MethodChannel.Result f28726e;

    /* renamed from: f  reason: collision with root package name */
    private c f28727f;

    /* renamed from: g  reason: collision with root package name */
    private b f28728g;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    public final class b extends BroadcastReceiver {
        public b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t f(m mVar) {
            MethodChannel.Result result = mVar.f28726e;
            if (result != null) {
                result.success(null);
            }
            return xc.t.f32733a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t g(m mVar) {
            MethodChannel.Result result = mVar.f28726e;
            if (result != null) {
                result.success(null);
            }
            return xc.t.f32733a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t h(m mVar) {
            MethodChannel.Result result = mVar.f28726e;
            if (result != null) {
                result.success(null);
            }
            return xc.t.f32733a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t i(m mVar) {
            MethodChannel.Result result = mVar.f28726e;
            if (result != null) {
                result.success(null);
            }
            return xc.t.f32733a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t j(m mVar) {
            MethodChannel.Result result = mVar.f28726e;
            if (result != null) {
                result.success(null);
            }
            return xc.t.f32733a;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            kotlin.jvm.internal.m.e(context, "context");
            kotlin.jvm.internal.m.e(intent, "intent");
            if (kotlin.jvm.internal.m.a("com.google.android.gms.auth.api.phone.SMS_RETRIEVED", intent.getAction())) {
                m.this.M();
                if (intent.getExtras() != null) {
                    Bundle extras = intent.getExtras();
                    kotlin.jvm.internal.m.b(extras);
                    if (extras.containsKey("com.google.android.gms.auth.api.phone.EXTRA_STATUS")) {
                        Bundle extras2 = intent.getExtras();
                        kotlin.jvm.internal.m.b(extras2);
                        Object obj = extras2.get("com.google.android.gms.auth.api.phone.EXTRA_STATUS");
                        kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type com.google.android.gms.common.api.Status");
                        Status status = (Status) obj;
                        int i10 = status.i();
                        if (i10 != 0) {
                            if (i10 != 15) {
                                Log.e("Pinput/SmartAuth", "ConsentBroadcastReceiver failed with status code: " + status.i());
                                final m mVar = m.this;
                                mVar.y(new id.a() { // from class: qc.q
                                    @Override // id.a
                                    public final Object invoke() {
                                        xc.t i11;
                                        i11 = m.b.i(m.this);
                                        return i11;
                                    }
                                });
                                return;
                            }
                            Log.e("Pinput/SmartAuth", "ConsentBroadcastReceiver Timeout");
                            final m mVar2 = m.this;
                            mVar2.y(new id.a() { // from class: qc.p
                                @Override // id.a
                                public final Object invoke() {
                                    xc.t h10;
                                    h10 = m.b.h(m.this);
                                    return h10;
                                }
                            });
                            return;
                        }
                        try {
                            Intent intent2 = (Intent) extras2.getParcelable("com.google.android.gms.auth.api.phone.EXTRA_CONSENT_INTENT");
                            if (intent2 != null && m.this.f28723b != null) {
                                Activity activity = m.this.f28723b;
                                if (activity != null) {
                                    activity.startActivityForResult(intent2, 11101);
                                    xc.t tVar = xc.t.f32733a;
                                }
                            } else {
                                Log.e("Pinput/SmartAuth", "ConsentBroadcastReceiver error: Can't start consent intent. consentIntent or mActivity is null");
                                final m mVar3 = m.this;
                                mVar3.y(new id.a() { // from class: qc.n
                                    @Override // id.a
                                    public final Object invoke() {
                                        xc.t f10;
                                        f10 = m.b.f(m.this);
                                        return f10;
                                    }
                                });
                                xc.t tVar2 = xc.t.f32733a;
                            }
                            return;
                        } catch (ActivityNotFoundException e10) {
                            Log.e("Pinput/SmartAuth", "ConsentBroadcastReceiver error: " + e10);
                            final m mVar4 = m.this;
                            mVar4.y(new id.a() { // from class: qc.o
                                @Override // id.a
                                public final Object invoke() {
                                    xc.t g10;
                                    g10 = m.b.g(m.this);
                                    return g10;
                                }
                            });
                            xc.t tVar3 = xc.t.f32733a;
                            return;
                        }
                    }
                }
                Log.e("Pinput/SmartAuth", "ConsentBroadcastReceiver failed with no status code");
                final m mVar5 = m.this;
                mVar5.y(new id.a() { // from class: qc.r
                    @Override // id.a
                    public final Object invoke() {
                        xc.t j10;
                        j10 = m.b.j(m.this);
                        return j10;
                    }
                });
            }
        }
    }

    /* loaded from: classes2.dex */
    public final class c extends BroadcastReceiver {
        public c() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t f(m mVar, String str) {
            MethodChannel.Result result = mVar.f28726e;
            if (result != null) {
                result.success(str);
            }
            return xc.t.f32733a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t g(m mVar) {
            MethodChannel.Result result = mVar.f28726e;
            if (result != null) {
                result.success(null);
            }
            return xc.t.f32733a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t h(m mVar) {
            MethodChannel.Result result = mVar.f28726e;
            if (result != null) {
                result.success(null);
            }
            return xc.t.f32733a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t i(m mVar) {
            MethodChannel.Result result = mVar.f28726e;
            if (result != null) {
                result.success(null);
            }
            return xc.t.f32733a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final xc.t j(m mVar) {
            MethodChannel.Result result = mVar.f28726e;
            if (result != null) {
                result.success(null);
            }
            return xc.t.f32733a;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            kotlin.jvm.internal.m.e(context, "context");
            kotlin.jvm.internal.m.e(intent, "intent");
            if (kotlin.jvm.internal.m.a("com.google.android.gms.auth.api.phone.SMS_RETRIEVED", intent.getAction())) {
                m.this.L();
                if (intent.getExtras() != null) {
                    Bundle extras = intent.getExtras();
                    kotlin.jvm.internal.m.b(extras);
                    if (extras.containsKey("com.google.android.gms.auth.api.phone.EXTRA_STATUS")) {
                        Bundle extras2 = intent.getExtras();
                        kotlin.jvm.internal.m.b(extras2);
                        Object obj = extras2.get("com.google.android.gms.auth.api.phone.EXTRA_STATUS");
                        kotlin.jvm.internal.m.c(obj, "null cannot be cast to non-null type com.google.android.gms.common.api.Status");
                        Status status = (Status) obj;
                        int i10 = status.i();
                        if (i10 != 0) {
                            if (i10 != 15) {
                                Log.e("Pinput/SmartAuth", "SMS Retriever API failed with status code: " + status.i() + ", check if SMS contains correct app signature");
                                final m mVar = m.this;
                                mVar.y(new id.a() { // from class: qc.v
                                    @Override // id.a
                                    public final Object invoke() {
                                        xc.t i11;
                                        i11 = m.c.i(m.this);
                                        return i11;
                                    }
                                });
                                return;
                            }
                            Log.e("Pinput/SmartAuth", "SMS Retriever API timed out, check if SMS contains correct app signature");
                            final m mVar2 = m.this;
                            mVar2.y(new id.a() { // from class: qc.u
                                @Override // id.a
                                public final Object invoke() {
                                    xc.t h10;
                                    h10 = m.c.h(m.this);
                                    return h10;
                                }
                            });
                            return;
                        }
                        final String string = extras2.getString("com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE");
                        if (string != null) {
                            final m mVar3 = m.this;
                            mVar3.y(new id.a() { // from class: qc.s
                                @Override // id.a
                                public final Object invoke() {
                                    xc.t f10;
                                    f10 = m.c.f(m.this, string);
                                    return f10;
                                }
                            });
                            return;
                        }
                        Log.e("Pinput/SmartAuth", "Retrieved SMS is null, check if SMS contains correct app signature");
                        final m mVar4 = m.this;
                        mVar4.y(new id.a() { // from class: qc.t
                            @Override // id.a
                            public final Object invoke() {
                                xc.t g10;
                                g10 = m.c.g(m.this);
                                return g10;
                            }
                        });
                        return;
                    }
                }
                Log.e("Pinput/SmartAuth", "SMS Retriever API failed with no status code, check if SMS contains correct app signature");
                final m mVar5 = m.this;
                mVar5.y(new id.a() { // from class: qc.w
                    @Override // id.a
                    public final Object invoke() {
                        xc.t j10;
                        j10 = m.c.j(m.this);
                        return j10;
                    }
                });
            }
        }
    }

    private final void A(int i10, Intent intent) {
        final Credential parcelableExtra;
        if (i10 == -1 && intent != null && (parcelableExtra = intent.getParcelableExtra("com.google.android.gms.credentials.Credential")) != null) {
            y(new id.a() { // from class: qc.f
                @Override // id.a
                public final Object invoke() {
                    xc.t B;
                    B = m.B(m.this, parcelableExtra);
                    return B;
                }
            });
        } else {
            y(new id.a() { // from class: qc.g
                @Override // id.a
                public final Object invoke() {
                    xc.t C;
                    C = m.C(m.this);
                    return C;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xc.t B(m mVar, Credential credential) {
        MethodChannel.Result result = mVar.f28726e;
        if (result != null) {
            result.success(mVar.q(credential));
        }
        return xc.t.f32733a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xc.t C(m mVar) {
        MethodChannel.Result result = mVar.f28726e;
        if (result != null) {
            result.success(null);
        }
        return xc.t.f32733a;
    }

    private final void D(int i10, Intent intent) {
        final Credential parcelableExtra;
        if (i10 == -1 && intent != null && (parcelableExtra = intent.getParcelableExtra("com.google.android.gms.credentials.Credential")) != null) {
            y(new id.a() { // from class: qc.k
                @Override // id.a
                public final Object invoke() {
                    xc.t E;
                    E = m.E(m.this, parcelableExtra);
                    return E;
                }
            });
        } else {
            y(new id.a() { // from class: qc.l
                @Override // id.a
                public final Object invoke() {
                    xc.t F;
                    F = m.F(m.this);
                    return F;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xc.t E(m mVar, Credential credential) {
        MethodChannel.Result result = mVar.f28726e;
        if (result != null) {
            result.success(mVar.q(credential));
        }
        return xc.t.f32733a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xc.t F(m mVar) {
        MethodChannel.Result result = mVar.f28726e;
        if (result != null) {
            result.success(null);
        }
        return xc.t.f32733a;
    }

    private final void G(final int i10) {
        y(new id.a() { // from class: qc.h
            @Override // id.a
            public final Object invoke() {
                xc.t H;
                H = m.H(m.this, i10);
                return H;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xc.t H(m mVar, int i10) {
        boolean z10;
        MethodChannel.Result result = mVar.f28726e;
        if (result != null) {
            if (i10 == -1) {
                z10 = true;
            } else {
                z10 = false;
            }
            result.success(Boolean.valueOf(z10));
        }
        return xc.t.f32733a;
    }

    private final void I(int i10, Intent intent) {
        if (i10 == -1 && intent != null) {
            final String stringExtra = intent.getStringExtra("com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE");
            y(new id.a() { // from class: qc.d
                @Override // id.a
                public final Object invoke() {
                    xc.t J;
                    J = m.J(m.this, stringExtra);
                    return J;
                }
            });
            return;
        }
        y(new id.a() { // from class: qc.e
            @Override // id.a
            public final Object invoke() {
                xc.t K;
                K = m.K(m.this);
                return K;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xc.t J(m mVar, String str) {
        MethodChannel.Result result = mVar.f28726e;
        if (result != null) {
            result.success(str);
        }
        return xc.t.f32733a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xc.t K(m mVar) {
        MethodChannel.Result result = mVar.f28726e;
        if (result != null) {
            result.success(null);
        }
        return xc.t.f32733a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L() {
        c cVar = this.f28727f;
        if (cVar != null) {
            V(cVar);
            this.f28727f = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M() {
        b bVar = this.f28728g;
        if (bVar != null) {
            V(bVar);
            this.f28728g = null;
        }
    }

    private final void N(MethodCall methodCall, MethodChannel.Result result) {
        this.f28726e = result;
        Boolean bool = (Boolean) methodCall.argument("showAddAccountButton");
        Boolean bool2 = (Boolean) methodCall.argument("showCancelButton");
        Boolean bool3 = (Boolean) methodCall.argument("isPhoneNumberIdentifierSupported");
        Boolean bool4 = (Boolean) methodCall.argument("isEmailAddressIdentifierSupported");
        String str = (String) methodCall.argument("accountTypes");
        String str2 = (String) methodCall.argument("idTokenNonce");
        Boolean bool5 = (Boolean) methodCall.argument("isIdTokenRequested");
        String str3 = (String) methodCall.argument("serverClientId");
        HintRequest.Builder builder = new HintRequest.Builder();
        CredentialPickerConfig.Builder builder2 = new CredentialPickerConfig.Builder();
        if (bool != null) {
            builder2.setShowAddAccountButton(bool.booleanValue());
        }
        if (bool2 != null) {
            builder2.setShowCancelButton(bool2.booleanValue());
        }
        builder.setHintPickerConfig(builder2.build());
        if (bool3 != null) {
            builder.setPhoneNumberIdentifierSupported(bool3.booleanValue());
        }
        if (bool4 != null) {
            builder.setEmailAddressIdentifierSupported(bool4.booleanValue());
        }
        if (str != null) {
            builder.setAccountTypes(new String[]{str});
        }
        if (str2 != null) {
            builder.setIdTokenNonce(str2);
        }
        if (bool5 != null) {
            builder.setIdTokenRequested(bool5.booleanValue());
        }
        if (str3 != null) {
            builder.setServerClientId(str3);
        }
        Context context = this.f28722a;
        if (context == null) {
            kotlin.jvm.internal.m.s("mContext");
            context = null;
        }
        PendingIntent hintPickerIntent = Credentials.getClient(context).getHintPickerIntent(builder.build());
        kotlin.jvm.internal.m.d(hintPickerIntent, "getHintPickerIntent(...)");
        Activity activity = this.f28723b;
        if (activity != null) {
            kotlin.jvm.internal.m.b(activity);
            androidx.core.app.b.A(activity, hintPickerIntent.getIntentSender(), 11100, null, 0, 0, 0, null);
        }
    }

    private final void O(MethodCall methodCall, final MethodChannel.Result result) {
        Credential z10 = z(methodCall, result);
        if (z10 == null) {
            return;
        }
        Context context = this.f28722a;
        if (context == null) {
            kotlin.jvm.internal.m.s("mContext");
            context = null;
        }
        CredentialsClient client = Credentials.getClient(context);
        kotlin.jvm.internal.m.d(client, "getClient(...)");
        client.save(z10).c(new m6.f() { // from class: qc.j
            @Override // m6.f
            public final void onComplete(Task task) {
                m.P(MethodChannel.Result.this, this, task);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(MethodChannel.Result result, m mVar, Task task) {
        Activity activity;
        kotlin.jvm.internal.m.e(task, "task");
        if (task.p()) {
            result.success(Boolean.TRUE);
            return;
        }
        Exception k10 = task.k();
        if ((k10 instanceof com.google.android.gms.common.api.j) && ((com.google.android.gms.common.api.j) k10).getStatusCode() == 6 && (activity = mVar.f28723b) != null) {
            try {
                mVar.f28726e = result;
                kotlin.jvm.internal.m.c(activity, "null cannot be cast to non-null type android.app.Activity");
                ((com.google.android.gms.common.api.j) k10).a(activity, 11102);
                return;
            } catch (IntentSender.SendIntentException e10) {
                Log.e("Pinput/SmartAuth", "Failed to send resolution.", e10);
            }
        }
        result.success(Boolean.FALSE);
    }

    private final void Q(MethodChannel.Result result) {
        U();
        this.f28726e = result;
        this.f28727f = new c();
        Context context = this.f28722a;
        Context context2 = null;
        if (context == null) {
            kotlin.jvm.internal.m.s("mContext");
            context = null;
        }
        context.registerReceiver(this.f28727f, new IntentFilter("com.google.android.gms.auth.api.phone.SMS_RETRIEVED"), "com.google.android.gms.auth.api.phone.permission.SEND", null);
        Context context3 = this.f28722a;
        if (context3 == null) {
            kotlin.jvm.internal.m.s("mContext");
        } else {
            context2 = context3;
        }
        f5.a.a(context2).z();
    }

    private final void R(MethodCall methodCall, MethodChannel.Result result) {
        U();
        this.f28726e = result;
        this.f28728g = new b();
        Context context = this.f28722a;
        Context context2 = null;
        if (context == null) {
            kotlin.jvm.internal.m.s("mContext");
            context = null;
        }
        context.registerReceiver(this.f28728g, new IntentFilter("com.google.android.gms.auth.api.phone.SMS_RETRIEVED"), "com.google.android.gms.auth.api.phone.permission.SEND", null);
        Context context3 = this.f28722a;
        if (context3 == null) {
            kotlin.jvm.internal.m.s("mContext");
        } else {
            context2 = context3;
        }
        f5.a.a(context2).A((String) methodCall.argument("senderPhoneNumber"));
    }

    private final void S(MethodChannel.Result result) {
        if (this.f28727f == null) {
            result.success(Boolean.FALSE);
            return;
        }
        L();
        result.success(Boolean.TRUE);
    }

    private final void T(MethodChannel.Result result) {
        if (this.f28728g == null) {
            result.success(Boolean.FALSE);
            return;
        }
        M();
        result.success(Boolean.TRUE);
    }

    private final void U() {
        L();
        M();
    }

    private final void V(BroadcastReceiver broadcastReceiver) {
        if (broadcastReceiver != null) {
            try {
                Context context = this.f28722a;
                if (context == null) {
                    kotlin.jvm.internal.m.s("mContext");
                    context = null;
                }
                context.unregisterReceiver(broadcastReceiver);
            } catch (Exception e10) {
                Log.e("Pinput/SmartAuth", "Unregistering receiver failed.", e10);
            }
        }
    }

    private final HashMap q(Credential credential) {
        HashMap hashMap = new HashMap();
        hashMap.put("accountType", credential.getAccountType());
        hashMap.put("familyName", credential.getFamilyName());
        hashMap.put("givenName", credential.getGivenName());
        hashMap.put(Chapter.KEY_ID, credential.getId());
        hashMap.put(Constants.NAME, credential.getName());
        hashMap.put(URLCredentialContract.FeedEntry.COLUMN_NAME_PASSWORD, credential.getPassword());
        hashMap.put("profilePictureUri", String.valueOf(credential.getProfilePictureUri()));
        return hashMap;
    }

    private final void r(MethodCall methodCall, final MethodChannel.Result result) {
        Credential z10 = z(methodCall, result);
        if (z10 == null) {
            return;
        }
        Context context = this.f28722a;
        if (context == null) {
            kotlin.jvm.internal.m.s("mContext");
            context = null;
        }
        CredentialsClient client = Credentials.getClient(context);
        kotlin.jvm.internal.m.d(client, "getClient(...)");
        client.delete(z10).c(new m6.f() { // from class: qc.b
            @Override // m6.f
            public final void onComplete(Task task) {
                m.s(MethodChannel.Result.this, task);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(MethodChannel.Result result, Task task) {
        kotlin.jvm.internal.m.e(task, "task");
        result.success(Boolean.valueOf(task.p()));
    }

    private final void t() {
        U();
        y(new id.a() { // from class: qc.i
            @Override // id.a
            public final Object invoke() {
                xc.t u10;
                u10 = m.u(m.this);
                return u10;
            }
        });
        this.f28723b = null;
        ActivityPluginBinding activityPluginBinding = this.f28724c;
        if (activityPluginBinding != null) {
            activityPluginBinding.removeActivityResultListener(this);
        }
        this.f28724c = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final xc.t u(m mVar) {
        MethodChannel.Result result = mVar.f28726e;
        if (result != null) {
            result.success(null);
        }
        return xc.t.f32733a;
    }

    private final void v(MethodCall methodCall, final MethodChannel.Result result) {
        final boolean z10;
        String str = (String) methodCall.argument("accountType");
        String str2 = (String) methodCall.argument("serverClientId");
        String str3 = (String) methodCall.argument("idTokenNonce");
        Boolean bool = (Boolean) methodCall.argument("isIdTokenRequested");
        Boolean bool2 = (Boolean) methodCall.argument("isPasswordLoginSupported");
        Boolean bool3 = (Boolean) methodCall.argument("showResolveDialog");
        if (bool3 != null) {
            z10 = bool3.booleanValue();
        } else {
            z10 = false;
        }
        CredentialRequest.Builder accountTypes = new CredentialRequest.Builder().setAccountTypes(new String[]{str});
        kotlin.jvm.internal.m.d(accountTypes, "setAccountTypes(...)");
        if (str != null) {
            accountTypes.setAccountTypes(new String[]{str});
        }
        if (str3 != null) {
            accountTypes.setIdTokenNonce(str3);
        }
        if (bool != null) {
            accountTypes.setIdTokenRequested(bool.booleanValue());
        }
        if (bool2 != null) {
            accountTypes.setPasswordLoginSupported(bool2.booleanValue());
        }
        if (str2 != null) {
            accountTypes.setServerClientId(str2);
        }
        Context context = this.f28722a;
        if (context == null) {
            kotlin.jvm.internal.m.s("mContext");
            context = null;
        }
        CredentialsClient client = Credentials.getClient(context);
        kotlin.jvm.internal.m.d(client, "getClient(...)");
        client.request(accountTypes.build()).c(new m6.f() { // from class: qc.c
            @Override // m6.f
            public final void onComplete(Task task) {
                m.w(MethodChannel.Result.this, this, z10, task);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(MethodChannel.Result result, m mVar, boolean z10, Task task) {
        Activity activity;
        kotlin.jvm.internal.m.e(task, "task");
        if (task.p() && task.l() != null && ((CredentialRequestResponse) task.l()).getCredential() != null) {
            Object l10 = task.l();
            kotlin.jvm.internal.m.b(l10);
            Credential credential = ((CredentialRequestResponse) l10).getCredential();
            if (credential != null) {
                result.success(mVar.q(credential));
                return;
            }
        }
        Exception k10 = task.k();
        if ((k10 instanceof com.google.android.gms.common.api.j) && ((com.google.android.gms.common.api.j) k10).getStatusCode() == 6 && (activity = mVar.f28723b) != null && z10) {
            try {
                mVar.f28726e = result;
                kotlin.jvm.internal.m.c(activity, "null cannot be cast to non-null type android.app.Activity");
                ((com.google.android.gms.common.api.j) k10).a(activity, 11103);
                return;
            } catch (IntentSender.SendIntentException e10) {
                Log.e("Pinput/SmartAuth", "Failed to send resolution.", e10);
            }
        }
        result.success(null);
    }

    private final void x(MethodChannel.Result result) {
        Object R;
        Context context = this.f28722a;
        if (context == null) {
            kotlin.jvm.internal.m.s("mContext");
            context = null;
        }
        R = yc.w.R(new qc.a(context).a(), 0);
        result.success(R);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y(id.a aVar) {
        try {
            aVar.invoke();
        } catch (IllegalStateException e10) {
            Log.e("Pinput/SmartAuth", "ignoring exception: " + e10);
        }
    }

    private final Credential z(MethodCall methodCall, MethodChannel.Result result) {
        String str = (String) methodCall.argument("accountType");
        String str2 = (String) methodCall.argument(Chapter.KEY_ID);
        String str3 = (String) methodCall.argument(Constants.NAME);
        String str4 = (String) methodCall.argument(URLCredentialContract.FeedEntry.COLUMN_NAME_PASSWORD);
        String str5 = (String) methodCall.argument("profilePictureUri");
        if (str2 == null) {
            result.success(Boolean.FALSE);
            return null;
        }
        Credential.Builder builder = new Credential.Builder(str2);
        if (str != null) {
            builder.setAccountType(str);
        }
        if (str3 != null) {
            builder.setName(str3);
        }
        if (str4 != null) {
            builder.setPassword(str4);
        }
        if (str5 != null) {
            builder.setProfilePictureUri(Uri.parse(str5));
        }
        return builder.build();
    }

    @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
    public boolean onActivityResult(int i10, int i11, Intent intent) {
        switch (i10) {
            case 11100:
                D(i11, intent);
                return true;
            case 11101:
                I(i11, intent);
                return true;
            case 11102:
                G(i11);
                return true;
            case 11103:
                A(i11, intent);
                return true;
            default:
                return true;
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding binding) {
        kotlin.jvm.internal.m.e(binding, "binding");
        this.f28723b = binding.getActivity();
        this.f28724c = binding;
        binding.addActivityResultListener(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        kotlin.jvm.internal.m.e(flutterPluginBinding, "flutterPluginBinding");
        this.f28725d = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "fman.smart_auth");
        this.f28722a = flutterPluginBinding.getApplicationContext();
        MethodChannel methodChannel = this.f28725d;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(this);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        t();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        t();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        kotlin.jvm.internal.m.e(binding, "binding");
        t();
        MethodChannel methodChannel = this.f28725d;
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
        this.f28725d = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        kotlin.jvm.internal.m.e(call, "call");
        kotlin.jvm.internal.m.e(result, "result");
        String str = call.method;
        if (str != null) {
            switch (str.hashCode()) {
                case -1067412648:
                    if (str.equals("stopSmsUserConsent")) {
                        T(result);
                        return;
                    }
                    break;
                case -981163955:
                    if (str.equals("getCredential")) {
                        v(call, result);
                        return;
                    }
                    break;
                case -133945416:
                    if (str.equals("startSmsUserConsent")) {
                        R(call, result);
                        return;
                    }
                    break;
                case 37270495:
                    if (str.equals("startSmsRetriever")) {
                        Q(result);
                        return;
                    }
                    break;
                case 115451405:
                    if (str.equals("getAppSignature")) {
                        x(result);
                        return;
                    }
                    break;
                case 805013375:
                    if (str.equals("stopSmsRetriever")) {
                        S(result);
                        return;
                    }
                    break;
                case 1149724086:
                    if (str.equals("requestHint")) {
                        N(call, result);
                        return;
                    }
                    break;
                case 1853459892:
                    if (str.equals("saveCredential")) {
                        O(call, result);
                        return;
                    }
                    break;
                case 2090692706:
                    if (str.equals("deleteCredential")) {
                        r(call, result);
                        return;
                    }
                    break;
            }
        }
        result.notImplemented();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding binding) {
        kotlin.jvm.internal.m.e(binding, "binding");
        this.f28723b = binding.getActivity();
        this.f28724c = binding;
        binding.addActivityResultListener(this);
    }
}
