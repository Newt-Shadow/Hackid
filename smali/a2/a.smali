.class public abstract La2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# instance fields
.field private a:Lio/flutter/plugin/common/EventChannel$EventSink;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lio/flutter/plugin/common/EventChannel$EventSink;
    .locals 1

    .line 1
    iget-object v0, p0, La2/a;->a:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, La2/a;->a:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 3
    .line 4
    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 1
    iput-object p2, p0, La2/a;->a:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 2
    .line 3
    return-void
.end method
