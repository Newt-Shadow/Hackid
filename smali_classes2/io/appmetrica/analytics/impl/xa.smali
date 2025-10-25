.class public final Lio/appmetrica/analytics/impl/xa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/BiFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)Lio/appmetrica/analytics/impl/cn;
    .locals 9

    .line 1
    new-instance v8, Lio/appmetrica/analytics/impl/cn;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Thread;->getPriority()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string v0, ""

    .line 27
    .line 28
    :goto_0
    move-object v5, v0

    .line 29
    invoke-virtual {p1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_1
    move-object v7, p1

    .line 50
    move-object v0, v8

    .line 51
    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/impl/cn;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/Integer;Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    return-object v8
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Thread;

    .line 2
    .line 3
    check-cast p2, [Ljava/lang/StackTraceElement;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/impl/xa;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)Lio/appmetrica/analytics/impl/cn;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
