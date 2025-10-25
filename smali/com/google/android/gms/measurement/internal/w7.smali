.class final synthetic Lcom/google/android/gms/measurement/internal/w7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/y7;

.field private final synthetic b:Landroid/os/Bundle;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/google/android/gms/measurement/internal/ae;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/y7;Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w7;->a:Lcom/google/android/gms/measurement/internal/y7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/w7;->b:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/w7;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/w7;->d:Lcom/google/android/gms/measurement/internal/ae;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w7;->a:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/w7;->b:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w7;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/w7;->d:Lcom/google/android/gms/measurement/internal/ae;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/y7;->i1(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ae;)V

    return-void
.end method
