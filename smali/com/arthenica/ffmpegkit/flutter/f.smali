.class public final synthetic Lcom/arthenica/ffmpegkit/flutter/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/arthenica/ffmpegkit/FFprobeSessionCompleteCallback;


# instance fields
.field public final synthetic a:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;


# direct methods
.method public synthetic constructor <init>(Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/arthenica/ffmpegkit/flutter/f;->a:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;

    return-void
.end method


# virtual methods
.method public final apply(Lcom/arthenica/ffmpegkit/FFprobeSession;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arthenica/ffmpegkit/flutter/f;->a:Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;

    invoke-virtual {v0, p1}, Lcom/arthenica/ffmpegkit/flutter/FFmpegKitFlutterPlugin;->emitSession(Lcom/arthenica/ffmpegkit/Session;)V

    return-void
.end method
