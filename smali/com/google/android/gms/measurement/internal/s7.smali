.class final synthetic Lcom/google/android/gms/measurement/internal/s7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/y7;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/ae;

.field private final synthetic c:Landroid/os/Bundle;

.field private final synthetic d:Li6/h;

.field private final synthetic e:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/y7;Lcom/google/android/gms/measurement/internal/ae;Landroid/os/Bundle;Li6/h;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s7;->a:Lcom/google/android/gms/measurement/internal/y7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/s7;->b:Lcom/google/android/gms/measurement/internal/ae;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/s7;->c:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/s7;->d:Li6/h;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/s7;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/s7;->a:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/s7;->b:Lcom/google/android/gms/measurement/internal/ae;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/s7;->c:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/s7;->d:Li6/h;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/s7;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/y7;->f1(Lcom/google/android/gms/measurement/internal/ae;Landroid/os/Bundle;Li6/h;Ljava/lang/String;)V

    return-void
.end method
