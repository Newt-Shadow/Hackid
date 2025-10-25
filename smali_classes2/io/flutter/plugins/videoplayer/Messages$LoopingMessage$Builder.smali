.class public final Lio/flutter/plugins/videoplayer/Messages$LoopingMessage$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private isLooping:Ljava/lang/Boolean;

.field private textureId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage$Builder;->textureId:Ljava/lang/Long;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->setTextureId(Ljava/lang/Long;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage$Builder;->isLooping:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->setIsLooping(Ljava/lang/Boolean;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public setIsLooping(Ljava/lang/Boolean;)Lio/flutter/plugins/videoplayer/Messages$LoopingMessage$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage$Builder;->isLooping:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTextureId(Ljava/lang/Long;)Lio/flutter/plugins/videoplayer/Messages$LoopingMessage$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage$Builder;->textureId:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method
