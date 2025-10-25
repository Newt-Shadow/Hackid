.class public final synthetic Lio/flutter/plugins/firebase/crashlytics/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;

.field public final synthetic b:Lm6/l;

.field public final synthetic c:Lh7/f;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;Lm6/l;Lh7/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugins/firebase/crashlytics/i;->a:Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;

    iput-object p2, p0, Lio/flutter/plugins/firebase/crashlytics/i;->b:Lm6/l;

    iput-object p3, p0, Lio/flutter/plugins/firebase/crashlytics/i;->c:Lh7/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/firebase/crashlytics/i;->a:Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;

    iget-object v1, p0, Lio/flutter/plugins/firebase/crashlytics/i;->b:Lm6/l;

    iget-object v2, p0, Lio/flutter/plugins/firebase/crashlytics/i;->c:Lh7/f;

    invoke-static {v0, v1, v2}, Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;->i(Lio/flutter/plugins/firebase/crashlytics/FlutterFirebaseCrashlyticsPlugin;Lm6/l;Lh7/f;)V

    return-void
.end method
