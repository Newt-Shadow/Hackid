.class public final Lio/sentry/flutter/SentryFlutterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic access$getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/sentry/flutter/SentryFlutterKt;->getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final getIfNotNull(Ljava/util/Map;Ljava/lang/String;Lid/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lid/l;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    :cond_0
    if-eqz p0, :cond_1

    .line 9
    .line 10
    invoke-interface {p2, p0}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_1
    return-void
.end method
