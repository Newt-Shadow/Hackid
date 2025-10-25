package io.appmetrica.analytics.networktasks.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.coreapi.internal.executors.InterruptionSafeThread;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.network.internal.NetworkClient;
import io.appmetrica.analytics.network.internal.Request;
import io.appmetrica.analytics.network.internal.Response;
import io.appmetrica.analytics.networktasks.internal.ExponentialBackoffPolicy;
import io.appmetrica.analytics.networktasks.internal.NetworkTask;
import io.appmetrica.analytics.networktasks.internal.RequestDataHolder;
import io.appmetrica.analytics.networktasks.internal.ResponseDataHolder;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.m;
import rd.b0;
import yc.w;
/* loaded from: classes2.dex */
public final class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final NetworkTask f21252a;

    /* renamed from: b  reason: collision with root package name */
    public final InterruptionSafeThread f21253b;

    /* renamed from: c  reason: collision with root package name */
    public final f f21254c;

    public h(NetworkTask networkTask, InterruptionSafeThread interruptionSafeThread, f fVar) {
        this.f21252a = networkTask;
        this.f21253b = interruptionSafeThread;
        this.f21254c = fVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z10;
        String str;
        CharSequence P0;
        byte[] postData;
        boolean z11;
        String X;
        ExponentialBackoffPolicy exponentialBackoffPolicy = this.f21252a.getExponentialBackoffPolicy();
        boolean canBeExecuted = this.f21252a.getConnectionExecutionPolicy().canBeExecuted();
        boolean canBeExecuted2 = this.f21252a.getExponentialBackoffPolicy().canBeExecuted(this.f21252a.getRetryPolicyConfig());
        if (this.f21253b.isRunning() && canBeExecuted && canBeExecuted2) {
            boolean onCreateNetworkTask = this.f21252a.onCreateNetworkTask();
            Boolean bool = null;
            while (this.f21253b.isRunning() && onCreateNetworkTask && exponentialBackoffPolicy.canBeExecuted(this.f21252a.getRetryPolicyConfig())) {
                f fVar = this.f21254c;
                NetworkTask networkTask = this.f21252a;
                fVar.getClass();
                if (networkTask.onPerformRequest()) {
                    String url = networkTask.getUrl();
                    if (url != null) {
                        P0 = b0.P0(url);
                        if (!TextUtils.isEmpty(P0.toString())) {
                            Request.Builder addHeader = new Request.Builder(url).addHeader("Accept", "application/json").addHeader("User-Agent", networkTask.getUserAgent());
                            RequestDataHolder requestDataHolder = networkTask.getRequestDataHolder();
                            Iterator<T> it = requestDataHolder.getHeaders().entrySet().iterator();
                            while (it.hasNext()) {
                                Map.Entry entry = (Map.Entry) it.next();
                                X = w.X((Iterable) entry.getValue(), StringUtils.COMMA, null, null, 0, null, null, 62, null);
                                addHeader.addHeader((String) entry.getKey(), X);
                            }
                            if (NetworkTask.Method.POST == requestDataHolder.getMethod() && (postData = requestDataHolder.getPostData()) != null) {
                                if (postData.length == 0) {
                                    z11 = true;
                                } else {
                                    z11 = false;
                                }
                                if (!z11) {
                                    addHeader.post(postData);
                                    Long sendTimestamp = requestDataHolder.getSendTimestamp();
                                    if (sendTimestamp != null) {
                                        addHeader.addHeader("Send-Timestamp", String.valueOf(TimeUnit.MILLISECONDS.toSeconds(sendTimestamp.longValue())));
                                    }
                                    Integer sendTimezoneSec = requestDataHolder.getSendTimezoneSec();
                                    if (sendTimezoneSec != null) {
                                        addHeader.addHeader("Send-Timezone", String.valueOf(sendTimezoneSec.intValue()));
                                    }
                                }
                            }
                            NetworkClient.Builder builder = new NetworkClient.Builder();
                            int i10 = b.f21248a;
                            Response execute = builder.withConnectTimeout(i10).withReadTimeout(i10).withSslSocketFactory(networkTask.getSslSocketFactory()).build().newCall(addHeader.build()).execute();
                            int code = execute.getCode();
                            ResponseDataHolder responseDataHolder = networkTask.getResponseDataHolder();
                            responseDataHolder.setResponseCode(code);
                            responseDataHolder.setResponseHeaders(CollectionUtils.convertMapKeysToLowerCase(execute.getHeaders()));
                            if (responseDataHolder.isValidResponse()) {
                                responseDataHolder.setResponseData(execute.getResponseData());
                            }
                            if (execute.isCompleted()) {
                                z10 = networkTask.onRequestComplete();
                                bool = Boolean.valueOf(z10);
                                if (bool.booleanValue() && this.f21252a.shouldTryNextHost()) {
                                    onCreateNetworkTask = true;
                                } else {
                                    onCreateNetworkTask = false;
                                }
                                exponentialBackoffPolicy.onHostAttemptFinished(bool.booleanValue());
                            } else {
                                networkTask.onRequestError(execute.getException());
                            }
                        }
                    }
                    StringBuilder sb2 = new StringBuilder("Task ");
                    sb2.append(networkTask.description());
                    sb2.append(" url is `");
                    sb2.append(url);
                    sb2.append("`. All hosts = ");
                    List<String> allHosts = networkTask.getUnderlyingTask().getFullUrlFormer().getAllHosts();
                    if (allHosts != null) {
                        str = allHosts.toString();
                    } else {
                        str = null;
                    }
                    sb2.append(str);
                    networkTask.onRequestError(new IllegalArgumentException(sb2.toString()));
                } else {
                    networkTask.onRequestError(null);
                }
                z10 = false;
                bool = Boolean.valueOf(z10);
                if (bool.booleanValue()) {
                }
                onCreateNetworkTask = false;
                exponentialBackoffPolicy.onHostAttemptFinished(bool.booleanValue());
            }
            exponentialBackoffPolicy.onAllHostsAttemptsFinished(m.a(bool, Boolean.TRUE));
            return;
        }
        this.f21252a.onShouldNotExecute();
    }
}
