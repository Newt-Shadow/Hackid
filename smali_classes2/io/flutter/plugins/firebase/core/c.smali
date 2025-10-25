.class public final synthetic Lio/flutter/plugins/firebase/core/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;

.field public final synthetic b:Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lm6/l;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;Ljava/lang/String;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/core/c;->a:Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;

    iput-object p2, p0, Lio/flutter/plugins/firebase/core/c;->b:Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;

    iput-object p3, p0, Lio/flutter/plugins/firebase/core/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lio/flutter/plugins/firebase/core/c;->d:Lm6/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/core/c;->a:Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;

    iget-object v1, p0, Lio/flutter/plugins/firebase/core/c;->b:Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;

    iget-object v2, p0, Lio/flutter/plugins/firebase/core/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lio/flutter/plugins/firebase/core/c;->d:Lm6/l;

    invoke-static {v0, v1, v2, v3}, Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;->j(Lio/flutter/plugins/firebase/core/FlutterFirebaseCorePlugin;Lio/flutter/plugins/firebase/core/GeneratedAndroidFirebaseCore$CoreFirebaseOptions;Ljava/lang/String;Lm6/l;)V

    return-void
.end method
