.class public final Lcom/posthog/surveys/SurveyQuestionBranching$End;
.super Lcom/posthog/surveys/SurveyQuestionBranching;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/surveys/SurveyQuestionBranching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "End"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/posthog/surveys/SurveyQuestionBranching$End;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/posthog/surveys/SurveyQuestionBranching$End;

    invoke-direct {v0}, Lcom/posthog/surveys/SurveyQuestionBranching$End;-><init>()V

    sput-object v0, Lcom/posthog/surveys/SurveyQuestionBranching$End;->INSTANCE:Lcom/posthog/surveys/SurveyQuestionBranching$End;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/posthog/surveys/SurveyQuestionBranching;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
