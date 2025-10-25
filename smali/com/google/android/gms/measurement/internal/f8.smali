.class public final Lcom/google/android/gms/measurement/internal/f8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field b:Ljava/lang/Boolean;

.field c:J

.field d:Lcom/google/android/gms/internal/measurement/g2;

.field e:Z

.field final f:Ljava/lang/Long;

.field g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/g2;Ljava/lang/Long;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/f8;->e:Z

    .line 6
    .line 7
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/f8;->a:Landroid/content/Context;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/f8;->f:Ljava/lang/Long;

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/f8;->d:Lcom/google/android/gms/internal/measurement/g2;

    .line 24
    .line 25
    iget-boolean p1, p2, Lcom/google/android/gms/internal/measurement/g2;->c:Z

    .line 26
    .line 27
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/f8;->e:Z

    .line 28
    .line 29
    iget-wide v1, p2, Lcom/google/android/gms/internal/measurement/g2;->b:J

    .line 30
    .line 31
    iput-wide v1, p0, Lcom/google/android/gms/measurement/internal/f8;->c:J

    .line 32
    .line 33
    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/g2;->e:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/f8;->g:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/g2;->d:Landroid/os/Bundle;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    const-string p2, "dataCollectionDefaultEnabled"

    .line 42
    .line 43
    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/f8;->b:Ljava/lang/Boolean;

    .line 52
    .line 53
    :cond_0
    return-void
.end method
