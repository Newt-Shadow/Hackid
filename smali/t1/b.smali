.class final Lt1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/g;


# static fields
.field public static final a:Lt1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lt1/b;

    invoke-direct {v0}, Lt1/b;-><init>()V

    sput-object v0, Lt1/b;->a:Lt1/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt1/f;)Lt1/f;
    .locals 1

    .line 1
    const-string v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
