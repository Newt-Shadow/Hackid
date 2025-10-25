.class final synthetic Lcom/google/android/gms/measurement/internal/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/n0;


# static fields
.field static final synthetic a:Lcom/google/android/gms/measurement/internal/l0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/l0;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/l0;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/l0;->a:Lcom/google/android/gms/measurement/internal/l0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/ue;->a()Z

    move-result v0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v1
.end method
