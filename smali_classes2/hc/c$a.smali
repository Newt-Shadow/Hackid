.class public final Lhc/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhc/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lhc/c;
    .locals 3

    .line 1
    new-instance v0, Lhc/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lhc/c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lhc/f;->d:Lhc/f;

    .line 8
    .line 9
    new-instance v2, Lhc/c$a$a;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Lhc/c$a$a;-><init>(Lhc/c;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lhc/f;->e(Lid/l;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
