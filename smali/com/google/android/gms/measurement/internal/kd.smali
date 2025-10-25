.class final Lcom/google/android/gms/measurement/internal/kd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/xd;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/pd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/pd;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/kd;->a:Lcom/google/android/gms/measurement/internal/pd;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/kd;->a:Lcom/google/android/gms/measurement/internal/pd;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/pd;->x0()Lcom/google/android/gms/measurement/internal/w6;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/pd;->x0()Lcom/google/android/gms/measurement/internal/w6;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p3, "AppId not known when logging event"

    .line 28
    .line 29
    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/kd;->a:Lcom/google/android/gms/measurement/internal/pd;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lcom/google/android/gms/measurement/internal/jd;

    .line 40
    .line 41
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/jd;-><init>(Lcom/google/android/gms/measurement/internal/kd;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
