.class public final synthetic Lcom/google/android/gms/internal/auth/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/t;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/auth/x;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth/x;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/v;->a:Lcom/google/android/gms/internal/auth/x;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/v;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/v;->a:Lcom/google/android/gms/internal/auth/x;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
