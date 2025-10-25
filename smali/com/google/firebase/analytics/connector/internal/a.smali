.class final synthetic Lcom/google/firebase/analytics/connector/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7/g;


# static fields
.field static final synthetic a:Lcom/google/firebase/analytics/connector/internal/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/analytics/connector/internal/a;

    invoke-direct {v0}, Lcom/google/firebase/analytics/connector/internal/a;-><init>()V

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/a;->a:Lcom/google/firebase/analytics/connector/internal/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lk7/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;->zza(Lk7/d;)Li7/a;

    move-result-object p1

    return-object p1
.end method
