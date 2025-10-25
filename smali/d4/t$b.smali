.class public final Ld4/t$b;
.super Ld4/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld4/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ld4/s;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Ld4/s;-><init>(Ld4/s;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ld4/s;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Ld4/s;-><init>(Ljava/lang/Object;IIJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Ld4/s;-><init>(Ljava/lang/Object;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Ld4/s;-><init>(Ljava/lang/Object;JI)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ld4/t$b;
    .locals 1

    .line 1
    new-instance v0, Ld4/t$b;

    .line 2
    .line 3
    invoke-super {p0, p1}, Ld4/s;->a(Ljava/lang/Object;)Ld4/s;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ld4/t$b;-><init>(Ld4/s;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
