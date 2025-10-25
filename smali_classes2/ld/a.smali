.class public final Lld/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lld/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lld/a;

    invoke-direct {v0}, Lld/a;-><init>()V

    sput-object v0, Lld/a;->a:Lld/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lld/d;
    .locals 1

    .line 1
    new-instance v0, Lld/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lld/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
