.class public interface abstract Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigConverterPigeon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppMetricaConfigConverterPigeon"
.end annotation


# direct methods
.method public static synthetic a(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigConverterPigeon;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigConverterPigeon;->lambda$setup$0(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigConverterPigeon;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    return-void
.end method

.method public static getCodec()Lio/flutter/plugin/common/MessageCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/flutter/plugin/common/MessageCodec<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigConverterPigeonCodec;->INSTANCE:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigConverterPigeonCodec;

    .line 2
    .line 3
    return-object v0
.end method

.method private static synthetic lambda$setup$0(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigConverterPigeon;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;

    .line 14
    .line 15
    :try_start_0
    invoke-interface {p0, p1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigConverterPigeon;->toJson(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    invoke-static {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigConverterPigeon;)V
    .locals 3

    .line 1
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    .line 2
    .line 3
    const-string v1, "dev.flutter.pigeon.appmetrica_plugin.AppMetricaConfigConverterPigeon.toJson"

    .line 4
    .line 5
    invoke-static {}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigConverterPigeon;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v0, p0, v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    new-instance p0, Lio/appmetrica/analytics/flutter/pigeon/a;

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/flutter/pigeon/a;-><init>(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigConverterPigeon;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract toJson(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;)Ljava/lang/String;
.end method
