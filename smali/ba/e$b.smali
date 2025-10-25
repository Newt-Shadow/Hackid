.class final Lba/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lba/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lba/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lba/e$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lba/d;Lba/d;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lba/d;->i()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Lba/d;->i()F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lba/d;

    .line 2
    .line 3
    check-cast p2, Lba/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lba/e$b;->a(Lba/d;Lba/d;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
