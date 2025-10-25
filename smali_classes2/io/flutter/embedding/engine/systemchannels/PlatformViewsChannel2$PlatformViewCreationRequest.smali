.class public Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewCreationRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlatformViewCreationRequest"
.end annotation


# instance fields
.field public final direction:I

.field public final logicalHeight:D

.field public final logicalWidth:D

.field public final params:Ljava/nio/ByteBuffer;

.field public final viewId:I

.field public final viewType:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;DDILjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewCreationRequest;->viewId:I

    .line 5
    .line 6
    iput-object p2, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewCreationRequest;->viewType:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewCreationRequest;->logicalWidth:D

    .line 9
    .line 10
    iput-wide p5, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewCreationRequest;->logicalHeight:D

    .line 11
    .line 12
    iput p7, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewCreationRequest;->direction:I

    .line 13
    .line 14
    iput-object p8, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewCreationRequest;->params:Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    return-void
.end method
