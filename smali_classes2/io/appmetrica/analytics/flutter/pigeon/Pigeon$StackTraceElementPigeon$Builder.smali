.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private column:Ljava/lang/Long;

.field private fileName:Ljava/lang/String;

.field private line:Ljava/lang/Long;

.field private methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon$Builder;->className:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;->setClassName(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon$Builder;->fileName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;->setFileName(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon$Builder;->line:Ljava/lang/Long;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;->setLine(Ljava/lang/Long;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon$Builder;->column:Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;->setColumn(Ljava/lang/Long;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon$Builder;->methodName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;->setMethodName(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon$Builder;->className:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setColumn(Ljava/lang/Long;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon$Builder;->column:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon$Builder;->fileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLine(Ljava/lang/Long;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon$Builder;->line:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMethodName(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon$Builder;->methodName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
