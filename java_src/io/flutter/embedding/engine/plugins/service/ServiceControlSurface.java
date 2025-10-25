package io.flutter.embedding.engine.plugins.service;

import android.app.Service;
import androidx.lifecycle.i;
/* loaded from: classes2.dex */
public interface ServiceControlSurface {
    void attachToService(Service service, i iVar, boolean z10);

    void detachFromService();

    void onMoveToBackground();

    void onMoveToForeground();
}
