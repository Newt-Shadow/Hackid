.class final Lio/sentry/android/replay/capture/f$e;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/capture/f;->R(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:J

.field final synthetic f:Lio/sentry/android/replay/capture/f;

.field final synthetic g:Lkotlin/jvm/internal/z;


# direct methods
.method constructor <init>(JLio/sentry/android/replay/capture/f;Lkotlin/jvm/internal/z;)V
    .locals 0

    iput-wide p1, p0, Lio/sentry/android/replay/capture/f$e;->e:J

    iput-object p3, p0, Lio/sentry/android/replay/capture/f$e;->f:Lio/sentry/android/replay/capture/f;

    iput-object p4, p0, Lio/sentry/android/replay/capture/f$e;->g:Lkotlin/jvm/internal/z;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/android/replay/capture/h$c$a;)Ljava/lang/Boolean;
    .locals 4

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/sentry/android/replay/capture/h$c$a;->c()Lio/sentry/t5;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lio/sentry/t5;->g0()Ljava/util/Date;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iget-wide v2, p0, Lio/sentry/android/replay/capture/f$e;->e:J

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-gez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lio/sentry/android/replay/capture/f$e;->f:Lio/sentry/android/replay/capture/f;

    .line 25
    .line 26
    invoke-virtual {v0}, Lio/sentry/android/replay/capture/a;->k()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/lit8 v1, v1, -0x1

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lio/sentry/android/replay/capture/a;->i(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lio/sentry/android/replay/capture/f$e;->f:Lio/sentry/android/replay/capture/f;

    .line 36
    .line 37
    invoke-virtual {p1}, Lio/sentry/android/replay/capture/h$c$a;->c()Lio/sentry/t5;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lio/sentry/t5;->h0()Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {v0, p1}, Lio/sentry/android/replay/capture/f;->I(Lio/sentry/android/replay/capture/f;Ljava/io/File;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lio/sentry/android/replay/capture/f$e;->g:Lkotlin/jvm/internal/z;

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p1, Lkotlin/jvm/internal/z;->a:Z

    .line 52
    .line 53
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 54
    .line 55
    return-object p1

    .line 56
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 57
    .line 58
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/sentry/android/replay/capture/h$c$a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/sentry/android/replay/capture/f$e;->a(Lio/sentry/android/replay/capture/h$c$a;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
