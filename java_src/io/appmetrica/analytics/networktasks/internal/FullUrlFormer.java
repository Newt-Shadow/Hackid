package io.appmetrica.analytics.networktasks.internal;

import android.net.Uri;
import io.appmetrica.analytics.networktasks.impl.c;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class FullUrlFormer<T> {

    /* renamed from: a  reason: collision with root package name */
    private List f21274a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private int f21275b = -1;

    /* renamed from: c  reason: collision with root package name */
    private String f21276c;

    /* renamed from: d  reason: collision with root package name */
    private final IParamsAppender f21277d;

    /* renamed from: e  reason: collision with root package name */
    private final ConfigProvider f21278e;

    public FullUrlFormer(IParamsAppender<T> iParamsAppender, ConfigProvider<T> configProvider) {
        this.f21277d = iParamsAppender;
        this.f21278e = configProvider;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void buildAndSetFullHostUrl() {
        Uri.Builder buildUpon = Uri.parse((String) this.f21274a.get(this.f21275b)).buildUpon();
        this.f21277d.appendParams(buildUpon, this.f21278e.getConfig());
        this.f21276c = buildUpon.build().toString();
    }

    public List<String> getAllHosts() {
        return this.f21274a;
    }

    public String getUrl() {
        return new c(this.f21276c).f21249a;
    }

    public boolean hasMoreHosts() {
        if (this.f21275b + 1 < this.f21274a.size()) {
            return true;
        }
        return false;
    }

    public void incrementAttemptNumber() {
        this.f21275b++;
    }

    public void setHosts(List<String> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.f21274a = list;
    }
}
