package com.posthog.surveys;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import xc.i;
/* loaded from: classes.dex */
public abstract class PostHogSurveyResponse {

    /* loaded from: classes.dex */
    public static final class Link extends PostHogSurveyResponse {
        private final boolean clicked;

        public Link(boolean z10) {
            super(null);
            this.clicked = z10;
        }

        public static /* synthetic */ Link copy$default(Link link, boolean z10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                z10 = link.clicked;
            }
            return link.copy(z10);
        }

        public final boolean component1() {
            return this.clicked;
        }

        public final Link copy(boolean z10) {
            return new Link(z10);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Link) && this.clicked == ((Link) obj).clicked;
        }

        public final boolean getClicked() {
            return this.clicked;
        }

        public int hashCode() {
            boolean z10 = this.clicked;
            if (z10) {
                return 1;
            }
            return z10 ? 1 : 0;
        }

        public String toString() {
            return "Link(clicked=" + this.clicked + ')';
        }
    }

    /* loaded from: classes.dex */
    public static final class MultipleChoice extends PostHogSurveyResponse {
        private final List<String> selectedChoices;

        public MultipleChoice(List<String> list) {
            super(null);
            this.selectedChoices = list;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ MultipleChoice copy$default(MultipleChoice multipleChoice, List list, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                list = multipleChoice.selectedChoices;
            }
            return multipleChoice.copy(list);
        }

        public final List<String> component1() {
            return this.selectedChoices;
        }

        public final MultipleChoice copy(List<String> list) {
            return new MultipleChoice(list);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof MultipleChoice) && m.a(this.selectedChoices, ((MultipleChoice) obj).selectedChoices);
        }

        public final List<String> getSelectedChoices() {
            return this.selectedChoices;
        }

        public int hashCode() {
            List<String> list = this.selectedChoices;
            if (list == null) {
                return 0;
            }
            return list.hashCode();
        }

        public String toString() {
            return "MultipleChoice(selectedChoices=" + this.selectedChoices + ')';
        }
    }

    /* loaded from: classes.dex */
    public static final class Rating extends PostHogSurveyResponse {
        private final Integer rating;

        public Rating(Integer num) {
            super(null);
            this.rating = num;
        }

        public static /* synthetic */ Rating copy$default(Rating rating, Integer num, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                num = rating.rating;
            }
            return rating.copy(num);
        }

        public final Integer component1() {
            return this.rating;
        }

        public final Rating copy(Integer num) {
            return new Rating(num);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Rating) && m.a(this.rating, ((Rating) obj).rating);
        }

        public final Integer getRating() {
            return this.rating;
        }

        public int hashCode() {
            Integer num = this.rating;
            if (num == null) {
                return 0;
            }
            return num.hashCode();
        }

        public String toString() {
            return "Rating(rating=" + this.rating + ')';
        }
    }

    /* loaded from: classes.dex */
    public static final class SingleChoice extends PostHogSurveyResponse {
        private final String selectedChoice;

        public SingleChoice(String str) {
            super(null);
            this.selectedChoice = str;
        }

        public static /* synthetic */ SingleChoice copy$default(SingleChoice singleChoice, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = singleChoice.selectedChoice;
            }
            return singleChoice.copy(str);
        }

        public final String component1() {
            return this.selectedChoice;
        }

        public final SingleChoice copy(String str) {
            return new SingleChoice(str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof SingleChoice) && m.a(this.selectedChoice, ((SingleChoice) obj).selectedChoice);
        }

        public final String getSelectedChoice() {
            return this.selectedChoice;
        }

        public int hashCode() {
            String str = this.selectedChoice;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public String toString() {
            return "SingleChoice(selectedChoice=" + this.selectedChoice + ')';
        }
    }

    /* loaded from: classes.dex */
    public static final class Text extends PostHogSurveyResponse {
        private final String text;

        public Text(String str) {
            super(null);
            this.text = str;
        }

        public static /* synthetic */ Text copy$default(Text text, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = text.text;
            }
            return text.copy(str);
        }

        public final String component1() {
            return this.text;
        }

        public final Text copy(String str) {
            return new Text(str);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Text) && m.a(this.text, ((Text) obj).text);
        }

        public final String getText() {
            return this.text;
        }

        public int hashCode() {
            String str = this.text;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        public String toString() {
            return "Text(text=" + this.text + ')';
        }
    }

    private PostHogSurveyResponse() {
    }

    public /* synthetic */ PostHogSurveyResponse(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public final Object toResponseValue() {
        if (this instanceof Text) {
            return ((Text) this).getText();
        }
        if (this instanceof SingleChoice) {
            return ((SingleChoice) this).getSelectedChoice();
        }
        if (this instanceof MultipleChoice) {
            return ((MultipleChoice) this).getSelectedChoices();
        }
        if (this instanceof Rating) {
            return String.valueOf(((Rating) this).getRating());
        }
        if (this instanceof Link) {
            if (((Link) this).getClicked()) {
                return "link clicked";
            }
            return null;
        }
        throw new i();
    }
}
