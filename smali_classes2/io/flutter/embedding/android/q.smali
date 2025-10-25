.class public final synthetic Lio/flutter/embedding/android/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/a;


# instance fields
.field public final synthetic a:Lio/flutter/embedding/android/FlutterView;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/android/FlutterView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/android/q;->a:Lio/flutter/embedding/android/FlutterView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/q;->a:Lio/flutter/embedding/android/FlutterView;

    check-cast p1, Lt1/j;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/FlutterView;->setWindowInfoListenerDisplayFeatures(Lt1/j;)V

    return-void
.end method
