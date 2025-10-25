.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private backtrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;",
            ">;"
        }
    .end annotation
.end field

.field private dartVersion:Ljava/lang/String;

.field private exceptionClass:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon$Builder;->exceptionClass:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;->setExceptionClass(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon$Builder;->message:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;->setMessage(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon$Builder;->dartVersion:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;->setDartVersion(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon$Builder;->backtrace:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon;->setBacktrace(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public setBacktrace(Ljava/util/List;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StackTraceElementPigeon;",
            ">;)",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon$Builder;->backtrace:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDartVersion(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon$Builder;->dartVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setExceptionClass(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon$Builder;->exceptionClass:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ErrorDetailsPigeon$Builder;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
