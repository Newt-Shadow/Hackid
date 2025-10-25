.class public final Lke/d;
.super Lke/e;
.source "SourceFile"


# static fields
.field public static final c:Lke/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lke/d;

    invoke-direct {v0}, Lke/d;-><init>()V

    sput-object v0, Lke/d;->c:Lke/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lke/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final c([C)V
    .locals 1

    .line 1
    const-string v0, "array"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lke/e;->a([C)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final d()[C
    .locals 1

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    invoke-super {p0, v0}, Lke/e;->b(I)[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
