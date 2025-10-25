.class public final Lcom/google/android/gms/internal/auth/k4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/j4;


# static fields
.field public static final a:Lcom/google/android/gms/internal/auth/m0;

.field public static final b:Lcom/google/android/gms/internal/auth/m0;

.field public static final c:Lcom/google/android/gms/internal/auth/m0;

.field public static final d:Lcom/google/android/gms/internal/auth/m0;

.field public static final e:Lcom/google/android/gms/internal/auth/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/auth/i0;

    .line 2
    .line 3
    const-string v1, "com.google.android.gms.auth_account"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/auth/a0;->a(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/i0;-><init>(Landroid/net/Uri;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/i0;->b()Lcom/google/android/gms/internal/auth/i0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/i0;->a()Lcom/google/android/gms/internal/auth/i0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "Aang__create_auth_exception_with_pending_intent"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/auth/i0;->e(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/m0;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sput-object v1, Lcom/google/android/gms/internal/auth/k4;->a:Lcom/google/android/gms/internal/auth/m0;

    .line 28
    .line 29
    const-string v1, "Aang__enable_add_account_restrictions"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/auth/i0;->e(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/m0;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sput-object v1, Lcom/google/android/gms/internal/auth/k4;->b:Lcom/google/android/gms/internal/auth/m0;

    .line 36
    .line 37
    const-string v1, "Aang__log_missing_gaia_id_event"

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/auth/i0;->e(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/m0;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sput-object v1, Lcom/google/android/gms/internal/auth/k4;->c:Lcom/google/android/gms/internal/auth/m0;

    .line 45
    .line 46
    const-string v1, "Aang__log_obfuscated_gaiaid_status"

    .line 47
    .line 48
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/auth/i0;->e(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/m0;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    sput-object v1, Lcom/google/android/gms/internal/auth/k4;->d:Lcom/google/android/gms/internal/auth/m0;

    .line 53
    .line 54
    const-string v1, "Aang__switch_clear_token_to_aang"

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/auth/i0;->e(Ljava/lang/String;Z)Lcom/google/android/gms/internal/auth/m0;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sput-object v0, Lcom/google/android/gms/internal/auth/k4;->e:Lcom/google/android/gms/internal/auth/m0;

    .line 61
    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/k4;->a:Lcom/google/android/gms/internal/auth/m0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/m0;->b()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
