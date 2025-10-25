package io.flutter.embedding.engine.plugins.contentprovider;

import android.content.ContentProvider;
import androidx.lifecycle.i;
/* loaded from: classes2.dex */
public interface ContentProviderControlSurface {
    void attachToContentProvider(ContentProvider contentProvider, i iVar);

    void detachFromContentProvider();
}
