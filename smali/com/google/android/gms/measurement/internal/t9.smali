.class final synthetic Lcom/google/android/gms/measurement/internal/t9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/w9;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/w9;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/t9;->a:Lcom/google/android/gms/measurement/internal/w9;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/t9;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t9;->a:Lcom/google/android/gms/measurement/internal/w9;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->L()Lcom/google/android/gms/measurement/internal/f5;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/t9;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/f5;->x(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->L()Lcom/google/android/gms/measurement/internal/f5;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f5;->p()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
