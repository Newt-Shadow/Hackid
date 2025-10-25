.class public final synthetic Lcom/arthenica/ffmpegkit/flutter/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/flutter/plugin/common/EventChannel$EventSink;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/common/EventChannel$EventSink;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/c;->a:Lio/flutter/plugin/common/EventChannel$EventSink;

    iput-object p2, p0, Lcom/arthenica/ffmpegkit/flutter/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/c;->a:Lio/flutter/plugin/common/EventChannel$EventSink;

    iget-object v1, p0, Lcom/arthenica/ffmpegkit/flutter/c;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterMethodResultHandler;->a(Lio/flutter/plugin/common/EventChannel$EventSink;Ljava/lang/Object;)V

    return-void
.end method
