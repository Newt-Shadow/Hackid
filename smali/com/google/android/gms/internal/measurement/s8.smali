.class final synthetic Lcom/google/android/gms/internal/measurement/s8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/w8;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/measurement/u8;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/u8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/s8;->a:Lcom/google/android/gms/internal/measurement/u8;

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s8;->a:Lcom/google/android/gms/internal/measurement/u8;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/u8;->h()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
