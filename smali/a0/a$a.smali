.class La0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La0/a;->c(Landroid/graphics/Typeface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La0/k$c;

.field final synthetic b:Landroid/graphics/Typeface;

.field final synthetic c:La0/a;


# direct methods
.method constructor <init>(La0/a;La0/k$c;Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    iput-object p1, p0, La0/a$a;->c:La0/a;

    .line 2
    .line 3
    iput-object p2, p0, La0/a$a;->a:La0/k$c;

    .line 4
    .line 5
    iput-object p3, p0, La0/a$a;->b:Landroid/graphics/Typeface;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, La0/a$a;->a:La0/k$c;

    .line 2
    .line 3
    iget-object v1, p0, La0/a$a;->b:Landroid/graphics/Typeface;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, La0/k$c;->b(Landroid/graphics/Typeface;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
