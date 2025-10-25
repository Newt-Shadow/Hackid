.class final Lv4/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv4/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lv4/d;


# direct methods
.method public constructor <init>(ILv4/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lv4/f$d;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lv4/f$d;->b:Lv4/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lv4/f$d;)I
    .locals 1

    .line 1
    iget v0, p0, Lv4/f$d;->a:I

    .line 2
    .line 3
    iget p1, p1, Lv4/f$d;->a:I

    .line 4
    .line 5
    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lv4/f$d;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lv4/f$d;->a(Lv4/f$d;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
