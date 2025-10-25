.class public final Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages$CreateMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private asset:Ljava/lang/String;

.field private formatHint:Ljava/lang/String;

.field private httpHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/videoplayer/Messages$CreateMessage;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->asset:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->setAsset(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->uri:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->setUri(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->packageName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->setPackageName(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->formatHint:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->setFormatHint(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->httpHeaders:Ljava/util/Map;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->setHttpHeaders(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public setAsset(Ljava/lang/String;)Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->asset:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFormatHint(Ljava/lang/String;)Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->formatHint:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setHttpHeaders(Ljava/util/Map;)Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->httpHeaders:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;->uri:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
