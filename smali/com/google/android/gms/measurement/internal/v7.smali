.class final synthetic Lcom/google/android/gms/measurement/internal/v7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/y7;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/ae;

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/g;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/y7;Lcom/google/android/gms/measurement/internal/ae;Lcom/google/android/gms/measurement/internal/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/v7;->a:Lcom/google/android/gms/measurement/internal/y7;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/v7;->b:Lcom/google/android/gms/measurement/internal/ae;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/v7;->c:Lcom/google/android/gms/measurement/internal/g;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/v7;->a:Lcom/google/android/gms/measurement/internal/y7;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/v7;->b:Lcom/google/android/gms/measurement/internal/ae;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/v7;->c:Lcom/google/android/gms/measurement/internal/g;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/y7;->h1(Lcom/google/android/gms/measurement/internal/ae;Lcom/google/android/gms/measurement/internal/g;)V

    return-void
.end method
