package io.appmetrica.analytics.appsetid.internal;

import android.content.Context;
import c5.b;
import com.google.android.gms.appset.AppSet;
import io.appmetrica.analytics.coreapi.internal.identifiers.AppSetIdScope;
import java.util.ArrayList;
import java.util.List;
import m6.Task;
import m6.f;
/* loaded from: classes2.dex */
public final class AppSetIdRetriever implements IAppSetIdRetriever {

    /* renamed from: a  reason: collision with root package name */
    private final Object f17563a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList f17564b = new ArrayList();

    public static final AppSetIdScope access$convertScope(AppSetIdRetriever appSetIdRetriever, int i10) {
        appSetIdRetriever.getClass();
        if (i10 != 1) {
            if (i10 != 2) {
                return AppSetIdScope.UNKNOWN;
            }
            return AppSetIdScope.DEVELOPER;
        }
        return AppSetIdScope.APP;
    }

    @Override // io.appmetrica.analytics.appsetid.internal.IAppSetIdRetriever
    public void retrieveAppSetId(Context context, final AppSetIdListener appSetIdListener) {
        Task a10 = AppSet.a(context).a();
        f fVar = new f() { // from class: io.appmetrica.analytics.appsetid.internal.AppSetIdRetriever$retrieveAppSetId$onCompleteListener$1
            @Override // m6.f
            public void onComplete(Task task) {
                Object obj;
                List list;
                obj = AppSetIdRetriever.this.f17563a;
                AppSetIdRetriever appSetIdRetriever = AppSetIdRetriever.this;
                synchronized (obj) {
                    list = appSetIdRetriever.f17564b;
                    list.remove(this);
                }
                if (task.p()) {
                    appSetIdListener.onAppSetIdRetrieved(((b) task.l()).a(), AppSetIdRetriever.access$convertScope(AppSetIdRetriever.this, ((b) task.l()).b()));
                } else {
                    appSetIdListener.onFailure(task.k());
                }
            }
        };
        synchronized (this.f17563a) {
            this.f17564b.add(fVar);
        }
        a10.c(fVar);
    }
}
