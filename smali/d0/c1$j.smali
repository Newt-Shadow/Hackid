.class Ld0/c1$j;
.super Ld0/c1$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# static fields
.field static final q:Ld0/c1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ld0/r1;->a()Landroid/view/WindowInsets;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ld0/c1;->v(Landroid/view/WindowInsets;)Ld0/c1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Ld0/c1$j;->q:Ld0/c1;

    .line 10
    .line 11
    return-void
.end method

.method constructor <init>(Ld0/c1;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ld0/c1$i;-><init>(Ld0/c1;Landroid/view/WindowInsets;)V

    return-void
.end method

.method constructor <init>(Ld0/c1;Ld0/c1$j;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ld0/c1$i;-><init>(Ld0/c1;Ld0/c1$i;)V

    return-void
.end method


# virtual methods
.method final d(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public g(I)Lv/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/c1$f;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {p1}, Ld0/c1$m;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {v0, p1}, Ld0/s1;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lv/b;->d(Landroid/graphics/Insets;)Lv/b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public p(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/c1$f;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {p1}, Ld0/c1$m;->a(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {v0, p1}, Ld0/t1;->a(Landroid/view/WindowInsets;I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
