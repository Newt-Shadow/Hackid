package io.flutter.plugins.googlesignin;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Scope;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugins.googlesignin.GoogleSignInPlugin;
import io.flutter.plugins.googlesignin.Messages;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import m6.Task;
import org.apache.tika.utils.StringUtils;
/* loaded from: classes2.dex */
public class GoogleSignInPlugin implements FlutterPlugin, ActivityAware {
    private ActivityPluginBinding activityPluginBinding;
    private Delegate delegate;
    private BinaryMessenger messenger;

    /* renamed from: io.flutter.plugins.googlesignin.GoogleSignInPlugin$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$flutter$plugins$googlesignin$Messages$SignInType;

        static {
            int[] iArr = new int[Messages.SignInType.values().length];
            $SwitchMap$io$flutter$plugins$googlesignin$Messages$SignInType = iArr;
            try {
                iArr[Messages.SignInType.GAMES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$flutter$plugins$googlesignin$Messages$SignInType[Messages.SignInType.STANDARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Delegate implements PluginRegistry.ActivityResultListener, Messages.GoogleSignInApi {
        private static final String ERROR_FAILURE_TO_RECOVER_AUTH = "failed_to_recover_auth";
        private static final String ERROR_REASON_EXCEPTION = "exception";
        private static final String ERROR_REASON_NETWORK_ERROR = "network_error";
        private static final String ERROR_REASON_SIGN_IN_CANCELED = "sign_in_canceled";
        private static final String ERROR_REASON_SIGN_IN_FAILED = "sign_in_failed";
        private static final String ERROR_REASON_SIGN_IN_REQUIRED = "sign_in_required";
        private static final String ERROR_REASON_STATUS = "status";
        private static final String ERROR_USER_RECOVERABLE_AUTH = "user_recoverable_auth";
        private static final int REQUEST_CODE_RECOVER_AUTH = 53294;
        static final int REQUEST_CODE_REQUEST_SCOPE = 53295;
        private static final int REQUEST_CODE_SIGNIN = 53293;
        private Activity activity;
        private final Context context;
        private final GoogleSignInWrapper googleSignInWrapper;
        private PendingOperation pendingOperation;
        private List<String> requestedScopes;
        private com.google.android.gms.auth.api.signin.b signInClient;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes2.dex */
        public static class PendingOperation {
            static final /* synthetic */ boolean $assertionsDisabled = false;
            final Messages.Result<Boolean> boolResult;
            final Object data;
            final String method;
            final Messages.Result<String> stringResult;
            final Messages.Result<Messages.UserData> userDataResult;
            final Messages.VoidResult voidResult;

            PendingOperation(String str, Messages.Result<Messages.UserData> result, Messages.VoidResult voidResult, Messages.Result<Boolean> result2, Messages.Result<String> result3, Object obj) {
                this.method = str;
                this.userDataResult = result;
                this.voidResult = voidResult;
                this.boolResult = result2;
                this.stringResult = result3;
                this.data = obj;
            }
        }

        public Delegate(Context context, GoogleSignInWrapper googleSignInWrapper) {
            this.context = context;
            this.googleSignInWrapper = googleSignInWrapper;
        }

        private void checkAndSetPendingAccessTokenOperation(String str, Messages.Result<String> result, Object obj) {
            checkAndSetPendingStringOperation(str, result, obj);
        }

        private void checkAndSetPendingBoolOperation(String str, Messages.Result<Boolean> result) {
            checkAndSetPendingOperation(str, null, null, result, null, null);
        }

        private void checkAndSetPendingOperation(String str, Messages.Result<Messages.UserData> result, Messages.VoidResult voidResult, Messages.Result<Boolean> result2, Messages.Result<String> result3, Object obj) {
            if (this.pendingOperation == null) {
                this.pendingOperation = new PendingOperation(str, result, voidResult, result2, result3, obj);
                return;
            }
            throw new IllegalStateException("Concurrent operations detected: " + this.pendingOperation.method + ", " + str);
        }

        private void checkAndSetPendingSignInOperation(String str, Messages.Result<Messages.UserData> result) {
            checkAndSetPendingOperation(str, result, null, null, null, null);
        }

        private void checkAndSetPendingStringOperation(String str, Messages.Result<String> result, Object obj) {
            checkAndSetPendingOperation(str, null, null, null, result, obj);
        }

        private void checkAndSetPendingVoidOperation(String str, Messages.VoidResult voidResult) {
            checkAndSetPendingOperation(str, null, voidResult, null, null, null);
        }

        private String errorCodeForStatus(int i10) {
            return i10 != 4 ? i10 != 7 ? i10 != 12501 ? ERROR_REASON_SIGN_IN_FAILED : ERROR_REASON_SIGN_IN_CANCELED : ERROR_REASON_NETWORK_ERROR : ERROR_REASON_SIGN_IN_REQUIRED;
        }

        private void finishWithBoolean(Boolean bool) {
            Messages.Result<Boolean> result = this.pendingOperation.boolResult;
            Objects.requireNonNull(result);
            result.success(bool);
            this.pendingOperation = null;
        }

        private void finishWithError(String str, String str2) {
            PendingOperation pendingOperation = this.pendingOperation;
            Messages.VoidResult voidResult = pendingOperation.voidResult;
            if (voidResult != null) {
                Objects.requireNonNull(voidResult);
                voidResult.error(new Messages.FlutterError(str, str2, null));
            } else {
                Messages.Result result = pendingOperation.userDataResult;
                if (result == null && (result = pendingOperation.boolResult) == null) {
                    result = pendingOperation.stringResult;
                }
                Objects.requireNonNull(result);
                result.error(new Messages.FlutterError(str, str2, null));
            }
            this.pendingOperation = null;
        }

        private void finishWithSuccess() {
            Messages.VoidResult voidResult = this.pendingOperation.voidResult;
            Objects.requireNonNull(voidResult);
            voidResult.success();
            this.pendingOperation = null;
        }

        private void finishWithUserData(Messages.UserData userData) {
            Messages.Result<Messages.UserData> result = this.pendingOperation.userDataResult;
            Objects.requireNonNull(result);
            result.success(userData);
            this.pendingOperation = null;
        }

        private static boolean isNullOrEmpty(String str) {
            if (str != null && !str.isEmpty()) {
                return false;
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$disconnect$1(Task task) {
            if (task.p()) {
                finishWithSuccess();
            } else {
                finishWithError(ERROR_REASON_STATUS, "Failed to disconnect.");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$getAccessToken$2(Boolean bool, Messages.Result result, UserRecoverableAuthException userRecoverableAuthException, String str) {
            if (bool.booleanValue() && this.pendingOperation == null) {
                Activity activity = getActivity();
                if (activity == null) {
                    result.error(new Messages.FlutterError(ERROR_USER_RECOVERABLE_AUTH, "Cannot recover auth because app is not in foreground. " + userRecoverableAuthException.getLocalizedMessage(), null));
                    return;
                }
                checkAndSetPendingAccessTokenOperation("getTokens", result, str);
                activity.startActivityForResult(userRecoverableAuthException.a(), REQUEST_CODE_RECOVER_AUTH);
                return;
            }
            result.error(new Messages.FlutterError(ERROR_USER_RECOVERABLE_AUTH, userRecoverableAuthException.getLocalizedMessage(), null));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$signOut$0(Task task) {
            if (task.p()) {
                finishWithSuccess();
            } else {
                finishWithError(ERROR_REASON_STATUS, "Failed to signout.");
            }
        }

        private void onSignInAccount(GoogleSignInAccount googleSignInAccount) {
            Messages.UserData.Builder displayName = new Messages.UserData.Builder().setEmail(googleSignInAccount.i()).setId(googleSignInAccount.o()).setIdToken(googleSignInAccount.p()).setServerAuthCode(googleSignInAccount.t()).setDisplayName(googleSignInAccount.g());
            if (googleSignInAccount.r() != null) {
                displayName.setPhotoUrl(googleSignInAccount.r().toString());
            }
            finishWithUserData(displayName.build());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onSignInResult(Task task) {
            try {
                onSignInAccount((GoogleSignInAccount) task.m(com.google.android.gms.common.api.b.class));
            } catch (com.google.android.gms.common.api.b e10) {
                finishWithError(errorCodeForStatus(e10.getStatusCode()), e10.toString());
            } catch (m6.j e11) {
                finishWithError("exception", e11.toString());
            }
        }

        @Override // io.flutter.plugins.googlesignin.Messages.GoogleSignInApi
        public void clearAuthCache(String str) {
            try {
                d5.b.a(this.context, str);
            } catch (Exception e10) {
                throw new Messages.FlutterError("exception", e10.getMessage(), null);
            }
        }

        @Override // io.flutter.plugins.googlesignin.Messages.GoogleSignInApi
        public void disconnect(Messages.VoidResult voidResult) {
            checkAndSetPendingVoidOperation("disconnect", voidResult);
            this.signInClient.A().c(new m6.f() { // from class: io.flutter.plugins.googlesignin.b
                @Override // m6.f
                public final void onComplete(Task task) {
                    GoogleSignInPlugin.Delegate.this.lambda$disconnect$1(task);
                }
            });
        }

        @Override // io.flutter.plugins.googlesignin.Messages.GoogleSignInApi
        public void getAccessToken(final String str, final Boolean bool, final Messages.Result<String> result) {
            try {
                Account account = new Account(str, "com.google");
                result.success(d5.b.b(this.context, account, "oauth2:" + i6.c.a(StringUtils.SPACE, this.requestedScopes)));
            } catch (UserRecoverableAuthException e10) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: io.flutter.plugins.googlesignin.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        GoogleSignInPlugin.Delegate.this.lambda$getAccessToken$2(bool, result, e10, str);
                    }
                });
            } catch (Exception e11) {
                result.error(new Messages.FlutterError("exception", e11.getMessage(), null));
            }
        }

        public Activity getActivity() {
            return this.activity;
        }

        @Override // io.flutter.plugins.googlesignin.Messages.GoogleSignInApi
        public void init(Messages.InitParams initParams) {
            GoogleSignInOptions.a aVar;
            int identifier;
            try {
                int i10 = AnonymousClass1.$SwitchMap$io$flutter$plugins$googlesignin$Messages$SignInType[initParams.getSignInType().ordinal()];
                if (i10 != 1) {
                    if (i10 == 2) {
                        aVar = new GoogleSignInOptions.a(GoogleSignInOptions.f5814l).b();
                    } else {
                        throw new IllegalStateException("Unknown signInOption");
                    }
                } else {
                    aVar = new GoogleSignInOptions.a(GoogleSignInOptions.f5815m);
                }
                String serverClientId = initParams.getServerClientId();
                if (!isNullOrEmpty(initParams.getClientId()) && isNullOrEmpty(serverClientId)) {
                    Log.w("google_sign_in", "clientId is not supported on Android and is interpreted as serverClientId. Use serverClientId instead to suppress this warning.");
                    serverClientId = initParams.getClientId();
                }
                if (isNullOrEmpty(serverClientId) && (identifier = this.context.getResources().getIdentifier("default_web_client_id", "string", this.context.getPackageName())) != 0) {
                    serverClientId = this.context.getString(identifier);
                }
                if (!isNullOrEmpty(serverClientId)) {
                    aVar.d(serverClientId);
                    aVar.g(serverClientId, initParams.getForceCodeForRefreshToken().booleanValue());
                }
                List<String> scopes = initParams.getScopes();
                this.requestedScopes = scopes;
                for (String str : scopes) {
                    aVar.f(new Scope(str), new Scope[0]);
                }
                if (!isNullOrEmpty(initParams.getHostedDomain())) {
                    aVar.i(initParams.getHostedDomain());
                }
                String forceAccountName = initParams.getForceAccountName();
                if (!isNullOrEmpty(forceAccountName)) {
                    aVar.h(forceAccountName);
                }
                this.signInClient = this.googleSignInWrapper.getClient(this.context, aVar.a());
            } catch (Exception e10) {
                throw new Messages.FlutterError("exception", e10.getMessage(), null);
            }
        }

        @Override // io.flutter.plugins.googlesignin.Messages.GoogleSignInApi
        public Boolean isSignedIn() {
            boolean z10;
            if (com.google.android.gms.auth.api.signin.a.b(this.context) != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            return Boolean.valueOf(z10);
        }

        @Override // io.flutter.plugin.common.PluginRegistry.ActivityResultListener
        public boolean onActivityResult(int i10, int i11, Intent intent) {
            PendingOperation pendingOperation = this.pendingOperation;
            boolean z10 = false;
            if (pendingOperation == null) {
                return false;
            }
            switch (i10) {
                case REQUEST_CODE_SIGNIN /* 53293 */:
                    if (intent != null) {
                        onSignInResult(com.google.android.gms.auth.api.signin.a.c(intent));
                    } else {
                        finishWithError(ERROR_REASON_SIGN_IN_FAILED, "Signin failed");
                    }
                    return true;
                case REQUEST_CODE_RECOVER_AUTH /* 53294 */:
                    if (i11 == -1) {
                        Messages.Result<String> result = pendingOperation.stringResult;
                        Objects.requireNonNull(result);
                        Object obj = this.pendingOperation.data;
                        Objects.requireNonNull(obj);
                        this.pendingOperation = null;
                        getAccessToken((String) obj, Boolean.FALSE, result);
                    } else {
                        finishWithError(ERROR_FAILURE_TO_RECOVER_AUTH, "Failed attempt to recover authentication");
                    }
                    return true;
                case REQUEST_CODE_REQUEST_SCOPE /* 53295 */:
                    if (i11 == -1) {
                        z10 = true;
                    }
                    finishWithBoolean(Boolean.valueOf(z10));
                    return true;
                default:
                    return false;
            }
        }

        @Override // io.flutter.plugins.googlesignin.Messages.GoogleSignInApi
        public void requestScopes(List<String> list, Messages.Result<Boolean> result) {
            checkAndSetPendingBoolOperation("requestScopes", result);
            GoogleSignInAccount lastSignedInAccount = this.googleSignInWrapper.getLastSignedInAccount(this.context);
            if (lastSignedInAccount == null) {
                finishWithError(ERROR_REASON_SIGN_IN_REQUIRED, "No account to grant scopes.");
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                Scope scope = new Scope(str);
                if (!this.googleSignInWrapper.hasPermissions(lastSignedInAccount, scope)) {
                    arrayList.add(scope);
                }
            }
            if (arrayList.isEmpty()) {
                finishWithBoolean(Boolean.TRUE);
            } else {
                this.googleSignInWrapper.requestPermissions(getActivity(), REQUEST_CODE_REQUEST_SCOPE, lastSignedInAccount, (Scope[]) arrayList.toArray(new Scope[0]));
            }
        }

        public void setActivity(Activity activity) {
            this.activity = activity;
        }

        @Override // io.flutter.plugins.googlesignin.Messages.GoogleSignInApi
        public void signIn(Messages.Result<Messages.UserData> result) {
            if (getActivity() != null) {
                checkAndSetPendingSignInOperation("signIn", result);
                getActivity().startActivityForResult(this.signInClient.z(), REQUEST_CODE_SIGNIN);
                return;
            }
            throw new IllegalStateException("signIn needs a foreground activity");
        }

        @Override // io.flutter.plugins.googlesignin.Messages.GoogleSignInApi
        public void signInSilently(Messages.Result<Messages.UserData> result) {
            checkAndSetPendingSignInOperation("signInSilently", result);
            Task C = this.signInClient.C();
            if (C.o()) {
                onSignInResult(C);
            } else {
                C.c(new m6.f() { // from class: io.flutter.plugins.googlesignin.d
                    @Override // m6.f
                    public final void onComplete(Task task) {
                        GoogleSignInPlugin.Delegate.this.onSignInResult(task);
                    }
                });
            }
        }

        @Override // io.flutter.plugins.googlesignin.Messages.GoogleSignInApi
        public void signOut(Messages.VoidResult voidResult) {
            checkAndSetPendingVoidOperation("signOut", voidResult);
            this.signInClient.B().c(new m6.f() { // from class: io.flutter.plugins.googlesignin.a
                @Override // m6.f
                public final void onComplete(Task task) {
                    GoogleSignInPlugin.Delegate.this.lambda$signOut$0(task);
                }
            });
        }
    }

    private void attachToActivity(ActivityPluginBinding activityPluginBinding) {
        this.activityPluginBinding = activityPluginBinding;
        activityPluginBinding.addActivityResultListener(this.delegate);
        this.delegate.setActivity(activityPluginBinding.getActivity());
    }

    private void dispose() {
        this.delegate = null;
        BinaryMessenger binaryMessenger = this.messenger;
        if (binaryMessenger != null) {
            Messages.GoogleSignInApi.setUp(binaryMessenger, null);
            this.messenger = null;
        }
    }

    private void disposeActivity() {
        this.activityPluginBinding.removeActivityResultListener(this.delegate);
        this.delegate.setActivity(null);
        this.activityPluginBinding = null;
    }

    public void initInstance(BinaryMessenger binaryMessenger, Context context, GoogleSignInWrapper googleSignInWrapper) {
        this.messenger = binaryMessenger;
        Delegate delegate = new Delegate(context, googleSignInWrapper);
        this.delegate = delegate;
        Messages.GoogleSignInApi.setUp(binaryMessenger, delegate);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        attachToActivity(activityPluginBinding);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        initInstance(flutterPluginBinding.getBinaryMessenger(), flutterPluginBinding.getApplicationContext(), new GoogleSignInWrapper());
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        disposeActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        disposeActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        dispose();
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding activityPluginBinding) {
        attachToActivity(activityPluginBinding);
    }
}
