.class final Lio/sentry/android/replay/capture/m$b;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/capture/m;->b(Lio/sentry/android/replay/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lio/sentry/android/replay/capture/m;


# direct methods
.method constructor <init>(Lio/sentry/android/replay/capture/m;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/replay/capture/m$b;->e:Lio/sentry/android/replay/capture/m;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/android/replay/capture/h$c;)V
    .locals 3

    .line 1
    const-string v0, "segment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lio/sentry/android/replay/capture/h$c$a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lio/sentry/android/replay/capture/h$c$a;

    .line 11
    .line 12
    iget-object v0, p0, Lio/sentry/android/replay/capture/m$b;->e:Lio/sentry/android/replay/capture/m;

    .line 13
    .line 14
    invoke-static {v0}, Lio/sentry/android/replay/capture/m;->H(Lio/sentry/android/replay/capture/m;)Lio/sentry/o0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {p1, v0, v2, v1, v2}, Lio/sentry/android/replay/capture/h$c$a;->b(Lio/sentry/android/replay/capture/h$c$a;Lio/sentry/o0;Lio/sentry/c0;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lio/sentry/android/replay/capture/m$b;->e:Lio/sentry/android/replay/capture/m;

    .line 24
    .line 25
    invoke-virtual {v0}, Lio/sentry/android/replay/capture/a;->k()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lio/sentry/android/replay/capture/a;->i(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lio/sentry/android/replay/capture/m$b;->e:Lio/sentry/android/replay/capture/m;

    .line 35
    .line 36
    invoke-virtual {p1}, Lio/sentry/android/replay/capture/h$c$a;->c()Lio/sentry/t5;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lio/sentry/t5;->g0()Ljava/util/Date;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Lio/sentry/android/replay/capture/a;->h(Ljava/util/Date;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/sentry/android/replay/capture/h$c;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/sentry/android/replay/capture/m$b;->a(Lio/sentry/android/replay/capture/h$c;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 7
    .line 8
    return-object p1
.end method
