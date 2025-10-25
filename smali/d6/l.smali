.class final Ld6/l;
.super Lg6/n;
.source "SourceFile"


# instance fields
.field private final a:Lm5/j;


# direct methods
.method constructor <init>(Lm5/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg6/n;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld6/l;->a:Lm5/j;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final N(Lcom/google/android/gms/location/LocationAvailability;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld6/l;->a:Lm5/j;

    .line 2
    .line 3
    new-instance v1, Ld6/k;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Ld6/k;-><init>(Ld6/l;Lcom/google/android/gms/location/LocationAvailability;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lm5/j;->c(Lm5/j$b;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final declared-synchronized f()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Ld6/l;->a:Lm5/j;

    .line 3
    .line 4
    invoke-virtual {v0}, Lm5/j;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method public final v(Lcom/google/android/gms/location/LocationResult;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld6/l;->a:Lm5/j;

    .line 2
    .line 3
    new-instance v1, Ld6/j;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Ld6/j;-><init>(Ld6/l;Lcom/google/android/gms/location/LocationResult;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lm5/j;->c(Lm5/j$b;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
