.class final Lcom/google/android/gms/measurement/internal/e8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li6/m;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/w6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/f8;Lcom/google/android/gms/measurement/internal/w6;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/e8;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e8;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->z()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method
