.class public final Lcom/google/android/gms/internal/measurement/gg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln6/s;


# static fields
.field private static final b:Lcom/google/android/gms/internal/measurement/gg;


# instance fields
.field private final a:Ln6/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/gg;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/gg;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/gg;->b:Lcom/google/android/gms/internal/measurement/gg;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/measurement/ig;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/ig;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ln6/t;->b(Ljava/lang/Object;)Ln6/s;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/gg;->a:Ln6/s;

    .line 14
    .line 15
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/gg;->b:Lcom/google/android/gms/internal/measurement/gg;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/gg;->b()Lcom/google/android/gms/internal/measurement/hg;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/hg;->zza()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/measurement/hg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/gg;->a:Ln6/s;

    .line 2
    .line 3
    invoke-interface {v0}, Ln6/s;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/hg;

    .line 8
    .line 9
    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/gg;->b()Lcom/google/android/gms/internal/measurement/hg;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
