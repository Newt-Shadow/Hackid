.class public final synthetic Lio/appmetrica/analytics/flutter/pigeon/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeon;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeon;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/v0;->a:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeon;

    return-void
.end method


# virtual methods
.method public final onMessage(Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/v0;->a:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeon;

    invoke-static {v0, p1, p2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeon;->i(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterPigeon;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    return-void
.end method
