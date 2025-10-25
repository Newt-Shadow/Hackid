.class final Lio/sentry/flutter/SentryFlutter$updateOptions$27;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/flutter/SentryFlutter;->updateOptions(Lio/sentry/android/core/SentryAndroidOptions;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/n;",
        "Lid/l;"
    }
.end annotation


# instance fields
.field final synthetic $options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$27;->$options:Lio/sentry/android/core/SentryAndroidOptions;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lio/sentry/flutter/SentryFlutter$updateOptions$27;->invoke(Ljava/util/Map;)V

    sget-object p1, Lxc/t;->a:Lxc/t;

    return-object p1
.end method

.method public final invoke(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "proxyJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/sentry/flutter/SentryFlutter$updateOptions$27;->$options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 3
    new-instance v1, Lio/sentry/s5$i;

    invoke-direct {v1}, Lio/sentry/s5$i;-><init>()V

    const-string v2, "host"

    .line 4
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Lio/sentry/s5$i;->f(Ljava/lang/String;)V

    const-string v2, "port"

    .line 5
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 7
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v4

    .line 8
    :goto_2
    invoke-virtual {v1, v2}, Lio/sentry/s5$i;->h(Ljava/lang/String;)V

    const-string v2, "type"

    .line 9
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v2, v4

    :goto_3
    if-eqz v2, :cond_4

    .line 10
    :try_start_0
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v5, "ROOT"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/net/Proxy$Type;->valueOf(Ljava/lang/String;)Ljava/net/Proxy$Type;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 11
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse `type` from proxy json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sentry"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 12
    :goto_4
    invoke-virtual {v1, v2}, Lio/sentry/s5$i;->i(Ljava/net/Proxy$Type;)V

    :cond_4
    const-string v2, "user"

    .line 13
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_5

    check-cast v2, Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object v2, v4

    :goto_5
    invoke-virtual {v1, v2}, Lio/sentry/s5$i;->j(Ljava/lang/String;)V

    const-string v2, "pass"

    .line 14
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    :cond_6
    invoke-virtual {v1, v4}, Lio/sentry/s5$i;->g(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v1}, Lio/sentry/s5;->setProxy(Lio/sentry/s5$i;)V

    return-void
.end method
