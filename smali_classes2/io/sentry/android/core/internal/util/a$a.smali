.class Lio/sentry/android/core/internal/util/a$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/core/internal/util/a;->c(Lio/sentry/l0$b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/sentry/l0$b;

.field final synthetic b:Lio/sentry/android/core/internal/util/a;


# direct methods
.method constructor <init>(Lio/sentry/android/core/internal/util/a;Lio/sentry/l0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/android/core/internal/util/a$a;->b:Lio/sentry/android/core/internal/util/a;

    .line 2
    .line 3
    iput-object p2, p0, Lio/sentry/android/core/internal/util/a$a;->a:Lio/sentry/l0$b;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/sentry/android/core/internal/util/a$a;->a:Lio/sentry/l0$b;

    .line 2
    .line 3
    iget-object v0, p0, Lio/sentry/android/core/internal/util/a$a;->b:Lio/sentry/android/core/internal/util/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/a;->b()Lio/sentry/l0$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Lio/sentry/l0$b;->c(Lio/sentry/l0$a;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/sentry/android/core/internal/util/a$a;->a:Lio/sentry/l0$b;

    .line 2
    .line 3
    iget-object p2, p0, Lio/sentry/android/core/internal/util/a$a;->b:Lio/sentry/android/core/internal/util/a;

    .line 4
    .line 5
    invoke-virtual {p2}, Lio/sentry/android/core/internal/util/a;->b()Lio/sentry/l0$a;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-interface {p1, p2}, Lio/sentry/l0$b;->c(Lio/sentry/l0$a;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/sentry/android/core/internal/util/a$a;->a:Lio/sentry/l0$b;

    .line 2
    .line 3
    iget-object v0, p0, Lio/sentry/android/core/internal/util/a$a;->b:Lio/sentry/android/core/internal/util/a;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/a;->b()Lio/sentry/l0$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {p1, v0}, Lio/sentry/l0$b;->c(Lio/sentry/l0$a;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onUnavailable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/a$a;->a:Lio/sentry/l0$b;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/android/core/internal/util/a$a;->b:Lio/sentry/android/core/internal/util/a;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/sentry/android/core/internal/util/a;->b()Lio/sentry/l0$a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Lio/sentry/l0$b;->c(Lio/sentry/l0$a;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
